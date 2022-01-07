
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns_i2c {unsigned int recv_count; unsigned int curr_recv_count; TYPE_1__* p_msg; scalar_t__ bus_hold_flag; int p_recv_buf; } ;
struct TYPE_2__ {unsigned int len; int flags; unsigned int addr; int buf; } ;


 unsigned int CDNS_I2C_ADDR_MASK ;
 int CDNS_I2C_ADDR_OFFSET ;
 unsigned int CDNS_I2C_CR_CLR_FIFO ;
 unsigned int CDNS_I2C_CR_HOLD ;
 int CDNS_I2C_CR_OFFSET ;
 unsigned int CDNS_I2C_CR_RW ;
 unsigned int CDNS_I2C_ENABLED_INTR_MASK ;
 scalar_t__ CDNS_I2C_FIFO_DEPTH ;
 int CDNS_I2C_IER_OFFSET ;
 int CDNS_I2C_ISR_OFFSET ;
 unsigned int CDNS_I2C_TRANSFER_SIZE ;
 int CDNS_I2C_XFER_SIZE_OFFSET ;
 int I2C_M_RECV_LEN ;
 unsigned int I2C_SMBUS_BLOCK_MAX ;
 int cdns_i2c_clear_bus_hold (struct cdns_i2c*) ;
 unsigned int cdns_i2c_readreg (int ) ;
 int cdns_i2c_writereg (unsigned int,int ) ;

__attribute__((used)) static void cdns_i2c_mrecv(struct cdns_i2c *id)
{
 unsigned int ctrl_reg;
 unsigned int isr_status;

 id->p_recv_buf = id->p_msg->buf;
 id->recv_count = id->p_msg->len;


 ctrl_reg = cdns_i2c_readreg(CDNS_I2C_CR_OFFSET);
 ctrl_reg |= CDNS_I2C_CR_RW | CDNS_I2C_CR_CLR_FIFO;

 if (id->p_msg->flags & I2C_M_RECV_LEN)
  id->recv_count = I2C_SMBUS_BLOCK_MAX + 1;

 id->curr_recv_count = id->recv_count;





 if ((id->recv_count > CDNS_I2C_FIFO_DEPTH) || id->bus_hold_flag)
  ctrl_reg |= CDNS_I2C_CR_HOLD;
 else
  ctrl_reg = ctrl_reg & ~CDNS_I2C_CR_HOLD;

 cdns_i2c_writereg(ctrl_reg, CDNS_I2C_CR_OFFSET);


 isr_status = cdns_i2c_readreg(CDNS_I2C_ISR_OFFSET);
 cdns_i2c_writereg(isr_status, CDNS_I2C_ISR_OFFSET);







 if (id->recv_count > CDNS_I2C_TRANSFER_SIZE) {
  cdns_i2c_writereg(CDNS_I2C_TRANSFER_SIZE,
      CDNS_I2C_XFER_SIZE_OFFSET);
  id->curr_recv_count = CDNS_I2C_TRANSFER_SIZE;
 } else {
  cdns_i2c_writereg(id->recv_count, CDNS_I2C_XFER_SIZE_OFFSET);
 }


 cdns_i2c_writereg(id->p_msg->addr & CDNS_I2C_ADDR_MASK,
      CDNS_I2C_ADDR_OFFSET);

 if (!id->bus_hold_flag &&
  ((id->p_msg->flags & I2C_M_RECV_LEN) != I2C_M_RECV_LEN) &&
  (id->recv_count <= CDNS_I2C_FIFO_DEPTH))
   cdns_i2c_clear_bus_hold(id);
 cdns_i2c_writereg(CDNS_I2C_ENABLED_INTR_MASK, CDNS_I2C_IER_OFFSET);
}
