
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int dummy; } ;


 int DW_IC_ENABLE ;
 int dw_writel (struct dw_i2c_dev*,int,int ) ;

__attribute__((used)) static inline void __i2c_dw_enable(struct dw_i2c_dev *dev)
{
 dw_writel(dev, 1, DW_IC_ENABLE);
}
