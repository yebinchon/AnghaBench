
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int timeout; } ;
struct at91_twi_dev {int buf_len; unsigned int transfer_status; int dev; scalar_t__ fifo_size; scalar_t__ recv_len_abort; TYPE_3__ adapter; int cmd_complete; scalar_t__ use_dma; TYPE_2__* msg; int use_alt_cmd; TYPE_1__* pdata; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int has_unre_flag; int has_alt_cmd; } ;


 int AT91_I2C_DMA_THRESHOLD ;
 int AT91_TWI_CR ;
 int AT91_TWI_FMR ;
 unsigned int AT91_TWI_FMR_RXRDYM (int ) ;
 unsigned int AT91_TWI_FMR_RXRDYM_MASK ;
 unsigned int AT91_TWI_FMR_TXRDYM (int ) ;
 unsigned int AT91_TWI_FMR_TXRDYM_MASK ;
 int AT91_TWI_IER ;
 int AT91_TWI_LOCK ;
 int AT91_TWI_LOCKCLR ;
 int AT91_TWI_NACK ;
 int AT91_TWI_ONE_DATA ;
 int AT91_TWI_OVRE ;
 int AT91_TWI_QUICK ;
 int AT91_TWI_RHRCLR ;
 int AT91_TWI_RXRDY ;
 int AT91_TWI_SR ;
 unsigned int AT91_TWI_START ;
 unsigned int AT91_TWI_STOP ;
 int AT91_TWI_THRCLR ;
 int AT91_TWI_TXCOMP ;
 int AT91_TWI_TXRDY ;
 int AT91_TWI_UNRE ;
 int EIO ;
 int EPROTO ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int I2C_M_RD ;
 int I2C_M_RECV_LEN ;
 int at91_init_twi_bus (struct at91_twi_dev*) ;
 int at91_twi_dma_cleanup (struct at91_twi_dev*) ;
 unsigned int at91_twi_read (struct at91_twi_dev*,int ) ;
 int at91_twi_read_data_dma (struct at91_twi_dev*) ;
 int at91_twi_write (struct at91_twi_dev*,int ,int) ;
 int at91_twi_write_data_dma (struct at91_twi_dev*) ;
 int at91_twi_write_next_byte (struct at91_twi_dev*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int at91_do_twi_transfer(struct at91_twi_dev *dev)
{
 int ret;
 unsigned long time_left;
 bool has_unre_flag = dev->pdata->has_unre_flag;
 bool has_alt_cmd = dev->pdata->has_alt_cmd;
 dev_dbg(dev->dev, "transfer: %s %zu bytes.\n",
  (dev->msg->flags & I2C_M_RD) ? "read" : "write", dev->buf_len);

 reinit_completion(&dev->cmd_complete);
 dev->transfer_status = 0;


 at91_twi_read(dev, AT91_TWI_SR);

 if (dev->fifo_size) {
  unsigned fifo_mr = at91_twi_read(dev, AT91_TWI_FMR);


  fifo_mr &= ~(AT91_TWI_FMR_TXRDYM_MASK |
        AT91_TWI_FMR_RXRDYM_MASK);
  fifo_mr |= AT91_TWI_FMR_TXRDYM(AT91_TWI_ONE_DATA);
  fifo_mr |= AT91_TWI_FMR_RXRDYM(AT91_TWI_ONE_DATA);
  at91_twi_write(dev, AT91_TWI_FMR, fifo_mr);


  at91_twi_write(dev, AT91_TWI_CR,
          AT91_TWI_THRCLR | AT91_TWI_RHRCLR);
 }

 if (!dev->buf_len) {
  at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_QUICK);
  at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_TXCOMP);
 } else if (dev->msg->flags & I2C_M_RD) {
  unsigned start_flags = AT91_TWI_START;


  if (!dev->use_alt_cmd && dev->buf_len <= 1 &&
      !(dev->msg->flags & I2C_M_RECV_LEN))
   start_flags |= AT91_TWI_STOP;
  at91_twi_write(dev, AT91_TWI_CR, start_flags);
  if (dev->use_dma && (dev->buf_len > AT91_I2C_DMA_THRESHOLD)) {
   at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_NACK);
   at91_twi_read_data_dma(dev);
  } else {
   at91_twi_write(dev, AT91_TWI_IER,
           AT91_TWI_TXCOMP |
           AT91_TWI_NACK |
           AT91_TWI_RXRDY);
  }
 } else {
  if (dev->use_dma && (dev->buf_len > AT91_I2C_DMA_THRESHOLD)) {
   at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_NACK);
   at91_twi_write_data_dma(dev);
  } else {
   at91_twi_write_next_byte(dev);
   at91_twi_write(dev, AT91_TWI_IER,
           AT91_TWI_TXCOMP | AT91_TWI_NACK |
           (dev->buf_len ? AT91_TWI_TXRDY : 0));
  }
 }

 time_left = wait_for_completion_timeout(&dev->cmd_complete,
           dev->adapter.timeout);
 if (time_left == 0) {
  dev->transfer_status |= at91_twi_read(dev, AT91_TWI_SR);
  dev_err(dev->dev, "controller timed out\n");
  at91_init_twi_bus(dev);
  ret = -ETIMEDOUT;
  goto error;
 }
 if (dev->transfer_status & AT91_TWI_NACK) {
  dev_dbg(dev->dev, "received nack\n");
  ret = -EREMOTEIO;
  goto error;
 }
 if (dev->transfer_status & AT91_TWI_OVRE) {
  dev_err(dev->dev, "overrun while reading\n");
  ret = -EIO;
  goto error;
 }
 if (has_unre_flag && dev->transfer_status & AT91_TWI_UNRE) {
  dev_err(dev->dev, "underrun while writing\n");
  ret = -EIO;
  goto error;
 }
 if ((has_alt_cmd || dev->fifo_size) &&
     (dev->transfer_status & AT91_TWI_LOCK)) {
  dev_err(dev->dev, "tx locked\n");
  ret = -EIO;
  goto error;
 }
 if (dev->recv_len_abort) {
  dev_err(dev->dev, "invalid smbus block length recvd\n");
  ret = -EPROTO;
  goto error;
 }

 dev_dbg(dev->dev, "transfer complete\n");

 return 0;

error:

 at91_twi_dma_cleanup(dev);

 if ((has_alt_cmd || dev->fifo_size) &&
     (dev->transfer_status & AT91_TWI_LOCK)) {
  dev_dbg(dev->dev, "unlock tx\n");
  at91_twi_write(dev, AT91_TWI_CR,
          AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
 }
 return ret;
}
