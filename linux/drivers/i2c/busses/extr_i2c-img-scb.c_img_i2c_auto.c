
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ len; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct img_i2c {int last_msg; TYPE_3__ msg; int check_timer; int int_enable; int msg_status; TYPE_2__ adap; } ;


 int EIO ;
 int I2C_M_RD ;
 unsigned int INT_ADDR_ACK_ERR ;
 unsigned int INT_FIFO_EMPTY ;
 unsigned int INT_FIFO_FULL_FILLING ;
 unsigned int INT_MASTER_HALTED ;
 int INT_SLAVE_EVENT ;
 unsigned int INT_STOP_DETECTED ;
 unsigned int INT_WRITE_ACK_ERR ;
 unsigned int ISR_COMPLETE (int ) ;
 unsigned int ISR_WAITSTOP ;
 unsigned int LINESTAT_ABORT_DET ;
 unsigned int LINESTAT_START_BIT_DET ;
 int dev_dbg (int ,char*) ;
 int img_i2c_read_fifo (struct img_i2c*) ;
 int img_i2c_stop_start (struct img_i2c*) ;
 int img_i2c_transaction_halt (struct img_i2c*,int) ;
 int img_i2c_write_fifo (struct img_i2c*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static unsigned int img_i2c_auto(struct img_i2c *i2c,
     unsigned int int_status,
     unsigned int line_status)
{
 if (int_status & (INT_WRITE_ACK_ERR | INT_ADDR_ACK_ERR))
  return ISR_COMPLETE(EIO);

 if (line_status & LINESTAT_ABORT_DET) {
  dev_dbg(i2c->adap.dev.parent, "abort condition detected\n");

  if ((i2c->msg.flags & I2C_M_RD) &&
      (int_status & INT_FIFO_FULL_FILLING))
   img_i2c_read_fifo(i2c);

  i2c->msg_status = -EIO;
  img_i2c_stop_start(i2c);
  return 0;
 }


 if (!i2c->last_msg && line_status & LINESTAT_START_BIT_DET) {
  img_i2c_transaction_halt(i2c, !i2c->last_msg);

  i2c->int_enable &= ~INT_SLAVE_EVENT;
 }

 mod_timer(&i2c->check_timer, jiffies + msecs_to_jiffies(1));

 if (int_status & INT_STOP_DETECTED) {

  if (i2c->msg.flags & I2C_M_RD)
   img_i2c_read_fifo(i2c);
  return ISR_COMPLETE(0);
 }

 if (i2c->msg.flags & I2C_M_RD) {
  if (int_status & (INT_FIFO_FULL_FILLING | INT_MASTER_HALTED)) {
   img_i2c_read_fifo(i2c);
   if (i2c->msg.len == 0)
    return ISR_WAITSTOP;
  }
 } else {
  if (int_status & (INT_FIFO_EMPTY | INT_MASTER_HALTED)) {
   if ((int_status & INT_FIFO_EMPTY) &&
       i2c->msg.len == 0)
    return ISR_WAITSTOP;
   img_i2c_write_fifo(i2c);
  }
 }
 if (int_status & INT_MASTER_HALTED) {




  img_i2c_transaction_halt(i2c, 0);
  img_i2c_transaction_halt(i2c, !i2c->last_msg);
 }

 return 0;
}
