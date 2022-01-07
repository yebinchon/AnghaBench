
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2c_dev {int clk; } ;


 int clk_get_rate (int ) ;

__attribute__((used)) static u32 i2c_dw_get_clk_rate_khz(struct dw_i2c_dev *dev)
{
 return clk_get_rate(dev->clk)/1000;
}
