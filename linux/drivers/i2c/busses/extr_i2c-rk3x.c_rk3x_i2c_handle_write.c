
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk3x_i2c {scalar_t__ processed; int error; TYPE_1__* msg; int dev; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int EIO ;
 unsigned int REG_INT_MBTF ;
 int REG_IPD ;
 int dev_err (int ,char*,unsigned int) ;
 int i2c_writel (struct rk3x_i2c*,unsigned int,int ) ;
 int rk3x_i2c_clean_ipd (struct rk3x_i2c*) ;
 int rk3x_i2c_fill_transmit_buf (struct rk3x_i2c*) ;
 int rk3x_i2c_stop (struct rk3x_i2c*,int ) ;

__attribute__((used)) static void rk3x_i2c_handle_write(struct rk3x_i2c *i2c, unsigned int ipd)
{
 if (!(ipd & REG_INT_MBTF)) {
  rk3x_i2c_stop(i2c, -EIO);
  dev_err(i2c->dev, "unexpected irq in WRITE: 0x%x\n", ipd);
  rk3x_i2c_clean_ipd(i2c);
  return;
 }


 i2c_writel(i2c, REG_INT_MBTF, REG_IPD);


 if (i2c->processed == i2c->msg->len)
  rk3x_i2c_stop(i2c, i2c->error);
 else
  rk3x_i2c_fill_transmit_buf(i2c);
}
