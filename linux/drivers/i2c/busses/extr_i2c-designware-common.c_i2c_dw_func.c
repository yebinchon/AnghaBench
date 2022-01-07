
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;
struct dw_i2c_dev {int functionality; } ;


 struct dw_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

u32 i2c_dw_func(struct i2c_adapter *adap)
{
 struct dw_i2c_dev *dev = i2c_get_adapdata(adap);

 return dev->functionality;
}
