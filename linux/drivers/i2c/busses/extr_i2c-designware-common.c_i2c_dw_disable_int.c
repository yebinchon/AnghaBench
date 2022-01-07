
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int dummy; } ;


 int DW_IC_INTR_MASK ;
 int dw_writel (struct dw_i2c_dev*,int ,int ) ;

void i2c_dw_disable_int(struct dw_i2c_dev *dev)
{
 dw_writel(dev, 0, DW_IC_INTR_MASK);
}
