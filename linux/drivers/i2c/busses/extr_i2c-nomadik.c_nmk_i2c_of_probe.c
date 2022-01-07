
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_i2c_dev {int clk_freq; int tft; int rft; int timeout; int sm; } ;
struct device_node {int dummy; } ;


 int I2C_FREQ_MODE_FAST ;
 int I2C_FREQ_MODE_STANDARD ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static void nmk_i2c_of_probe(struct device_node *np,
        struct nmk_i2c_dev *nmk)
{

 if (of_property_read_u32(np, "clock-frequency", &nmk->clk_freq))
  nmk->clk_freq = 100000;


 if (nmk->clk_freq <= 100000)
  nmk->sm = I2C_FREQ_MODE_STANDARD;
 else
  nmk->sm = I2C_FREQ_MODE_FAST;
 nmk->tft = 1;
 nmk->rft = 8;
 nmk->timeout = 200;
}
