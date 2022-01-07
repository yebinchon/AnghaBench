
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zx2967_i2c {int msg_rd; int error; int complete; } ;


 int ETIMEDOUT ;
 int I2C_TIMEOUT ;
 int REG_RDCONF ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int zx2967_i2c_empty_rx_fifo (struct zx2967_i2c*,scalar_t__) ;
 int zx2967_i2c_fill_tx_fifo (struct zx2967_i2c*) ;
 int zx2967_i2c_start_ctrl (struct zx2967_i2c*) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,scalar_t__,int ) ;

__attribute__((used)) static int zx2967_i2c_xfer_bytes(struct zx2967_i2c *i2c, u32 bytes)
{
 unsigned long time_left;
 int rd = i2c->msg_rd;
 int ret;

 reinit_completion(&i2c->complete);

 if (rd) {
  zx2967_i2c_writel(i2c, bytes - 1, REG_RDCONF);
 } else {
  ret = zx2967_i2c_fill_tx_fifo(i2c);
  if (ret)
   return ret;
 }

 zx2967_i2c_start_ctrl(i2c);

 time_left = wait_for_completion_timeout(&i2c->complete,
      I2C_TIMEOUT);
 if (time_left == 0)
  return -ETIMEDOUT;

 if (i2c->error)
  return i2c->error;

 return rd ? zx2967_i2c_empty_rx_fifo(i2c, bytes) : 0;
}
