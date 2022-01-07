
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct altr_i2c_dev {int isr_status; scalar_t__ msg_len; int dev; int msg_complete; scalar_t__ base; int msg_err; TYPE_1__* msg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; } ;


 int ALTR_I2C_ALL_IRQ ;
 int ALTR_I2C_ISR_ARB ;
 int ALTR_I2C_ISR_NACK ;
 int ALTR_I2C_ISR_RXOF ;
 int ALTR_I2C_ISR_RXRDY ;
 int ALTR_I2C_ISR_TXRDY ;
 scalar_t__ ALTR_I2C_STATUS ;
 int ALTR_I2C_STAT_CORE ;
 int ALTR_I2C_TIMEOUT ;
 int EAGAIN ;
 int ENXIO ;
 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int altr_i2c_empty_rx_fifo (struct altr_i2c_dev*) ;
 int altr_i2c_fill_tx_fifo (struct altr_i2c_dev*) ;
 int altr_i2c_int_clear (struct altr_i2c_dev*,int) ;
 int altr_i2c_int_enable (struct altr_i2c_dev*,int,int) ;
 int altr_i2c_stop (struct altr_i2c_dev*) ;
 int complete (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,...) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t altr_i2c_isr(int irq, void *_dev)
{
 int ret;
 bool read, finish = 0;
 struct altr_i2c_dev *idev = _dev;
 u32 status = idev->isr_status;

 if (!idev->msg) {
  dev_warn(idev->dev, "unexpected interrupt\n");
  altr_i2c_int_clear(idev, ALTR_I2C_ALL_IRQ);
  return IRQ_HANDLED;
 }
 read = (idev->msg->flags & I2C_M_RD) != 0;


 if (unlikely(status & ALTR_I2C_ISR_ARB)) {
  altr_i2c_int_clear(idev, ALTR_I2C_ISR_ARB);
  idev->msg_err = -EAGAIN;
  finish = 1;
 } else if (unlikely(status & ALTR_I2C_ISR_NACK)) {
  dev_dbg(idev->dev, "Could not get ACK\n");
  idev->msg_err = -ENXIO;
  altr_i2c_int_clear(idev, ALTR_I2C_ISR_NACK);
  altr_i2c_stop(idev);
  finish = 1;
 } else if (read && unlikely(status & ALTR_I2C_ISR_RXOF)) {

  altr_i2c_empty_rx_fifo(idev);
  altr_i2c_int_clear(idev, ALTR_I2C_ISR_RXRDY);
  altr_i2c_stop(idev);
  dev_err(idev->dev, "RX FIFO Overflow\n");
  finish = 1;
 } else if (read && (status & ALTR_I2C_ISR_RXRDY)) {

  altr_i2c_empty_rx_fifo(idev);
  altr_i2c_int_clear(idev, ALTR_I2C_ISR_RXRDY);
  if (!idev->msg_len)
   finish = 1;
 } else if (!read && (status & ALTR_I2C_ISR_TXRDY)) {

  altr_i2c_int_clear(idev, ALTR_I2C_ISR_TXRDY);
  if (idev->msg_len > 0)
   altr_i2c_fill_tx_fifo(idev);
  else
   finish = 1;
 } else {
  dev_warn(idev->dev, "Unexpected interrupt: 0x%x\n", status);
  altr_i2c_int_clear(idev, ALTR_I2C_ALL_IRQ);
 }

 if (finish) {

  ret = readl_poll_timeout_atomic(idev->base + ALTR_I2C_STATUS,
      status,
      !(status & ALTR_I2C_STAT_CORE),
      1, ALTR_I2C_TIMEOUT);
  if (ret)
   dev_err(idev->dev, "message timeout\n");
  altr_i2c_int_enable(idev, ALTR_I2C_ALL_IRQ, 0);
  altr_i2c_int_clear(idev, ALTR_I2C_ALL_IRQ);
  complete(&idev->msg_complete);
  dev_dbg(idev->dev, "Message Complete\n");
 }

 return IRQ_HANDLED;
}
