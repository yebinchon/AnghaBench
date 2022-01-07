
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {scalar_t__ sys_freq; int * clk; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ SYS_FREQ_DEFAULT ;
 scalar_t__ acpi_disabled ;
 int * clk_get (struct device*,int *) ;
 scalar_t__ clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int device_property_read_u32 (struct device*,char*,scalar_t__*) ;

__attribute__((used)) static void thunder_i2c_clock_enable(struct device *dev, struct octeon_i2c *i2c)
{
 int ret;

 if (acpi_disabled) {

  i2c->clk = clk_get(dev, ((void*)0));
  if (IS_ERR(i2c->clk)) {
   i2c->clk = ((void*)0);
   goto skip;
  }

  ret = clk_prepare_enable(i2c->clk);
  if (ret)
   goto skip;
  i2c->sys_freq = clk_get_rate(i2c->clk);
 } else {

  device_property_read_u32(dev, "sclk", &i2c->sys_freq);
 }

skip:
 if (!i2c->sys_freq)
  i2c->sys_freq = SYS_FREQ_DEFAULT;
}
