
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2c_dev {int dummy; } ;


 int DW_IC_COMP_PARAM_1 ;
 int dw_readl (struct dw_i2c_dev*,int ) ;

u32 i2c_dw_read_comp_param(struct dw_i2c_dev *dev)
{
 return dw_readl(dev, DW_IC_COMP_PARAM_1);
}
