
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;
struct axxia_i2c_dev {scalar_t__ base; } ;


 int BM_SCLC ;
 int BM_SDAC ;
 scalar_t__ I2C_BUS_MONITOR ;
 struct axxia_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void axxia_i2c_set_scl(struct i2c_adapter *adap, int val)
{
 struct axxia_i2c_dev *idev = i2c_get_adapdata(adap);
 u32 tmp;


 tmp = readl(idev->base + I2C_BUS_MONITOR) & BM_SDAC;
 if (!val)
  tmp |= BM_SCLC;
 writel(tmp, idev->base + I2C_BUS_MONITOR);
}
