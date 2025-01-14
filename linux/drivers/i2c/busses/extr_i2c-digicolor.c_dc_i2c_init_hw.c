
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_i2c {int frequency; scalar_t__ regs; int dev; int clk; } ;


 unsigned int DIV_ROUND_UP (unsigned long,int) ;
 int EINVAL ;
 scalar_t__ II_CLOCKTIME ;
 scalar_t__ II_CONTROL ;
 unsigned int II_CONTROL_LOCAL_RESET ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 int udelay (int) ;
 int writeb_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int dc_i2c_init_hw(struct dc_i2c *i2c)
{
 unsigned long clk_rate = clk_get_rate(i2c->clk);
 unsigned int clocktime;

 writeb_relaxed(II_CONTROL_LOCAL_RESET, i2c->regs + II_CONTROL);
 udelay(100);
 writeb_relaxed(0, i2c->regs + II_CONTROL);
 udelay(100);

 clocktime = DIV_ROUND_UP(clk_rate, 64 * i2c->frequency);
 if (clocktime < 1 || clocktime > 0xff) {
  dev_err(i2c->dev, "can't set bus speed of %u Hz\n",
   i2c->frequency);
  return -EINVAL;
 }
 writeb_relaxed(clocktime - 1, i2c->regs + II_CLOCKTIME);

 return 0;
}
