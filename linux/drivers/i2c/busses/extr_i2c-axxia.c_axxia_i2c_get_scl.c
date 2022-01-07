
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct axxia_i2c_dev {scalar_t__ base; } ;


 int BM_SCLS ;
 scalar_t__ I2C_BUS_MONITOR ;
 struct axxia_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int axxia_i2c_get_scl(struct i2c_adapter *adap)
{
 struct axxia_i2c_dev *idev = i2c_get_adapdata(adap);

 return !!(readl(idev->base + I2C_BUS_MONITOR) & BM_SCLS);
}
