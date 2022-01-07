
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {unsigned long (* get_clk_rate_khz ) (struct dw_i2c_dev*) ;} ;


 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned long stub1 (struct dw_i2c_dev*) ;

unsigned long i2c_dw_clk_rate(struct dw_i2c_dev *dev)
{




 if (WARN_ON_ONCE(!dev->get_clk_rate_khz))
  return 0;
 return dev->get_clk_rate_khz(dev);
}
