
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mobile_i2c_data {int clks_per_count; scalar_t__ bus_speed; int icch; int iccl; int dev; int clk; } ;


 int EINVAL ;
 scalar_t__ FAST_MODE ;
 scalar_t__ STANDARD_MODE ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 int sh_mobile_i2c_check_timing (struct sh_mobile_i2c_data*) ;
 int sh_mobile_i2c_icch (unsigned long,int,int) ;
 int sh_mobile_i2c_iccl (unsigned long,int,int) ;

__attribute__((used)) static int sh_mobile_i2c_init(struct sh_mobile_i2c_data *pd)
{
 unsigned long i2c_clk_khz;
 u32 tHIGH, tLOW, tf;

 i2c_clk_khz = clk_get_rate(pd->clk) / 1000 / pd->clks_per_count;

 if (pd->bus_speed == STANDARD_MODE) {
  tLOW = 47;
  tHIGH = 40;
  tf = 3;
 } else if (pd->bus_speed == FAST_MODE) {
  tLOW = 13;
  tHIGH = 6;
  tf = 3;
 } else {
  dev_err(pd->dev, "unrecognized bus speed %lu Hz\n",
   pd->bus_speed);
  return -EINVAL;
 }

 pd->iccl = sh_mobile_i2c_iccl(i2c_clk_khz, tLOW, tf);
 pd->icch = sh_mobile_i2c_icch(i2c_clk_khz, tHIGH, tf);

 return sh_mobile_i2c_check_timing(pd);
}
