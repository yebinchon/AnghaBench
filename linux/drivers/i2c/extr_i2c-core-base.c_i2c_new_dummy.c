
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ IS_ERR (struct i2c_client*) ;
 struct i2c_client* i2c_new_dummy_device (struct i2c_adapter*,int ) ;

struct i2c_client *i2c_new_dummy(struct i2c_adapter *adapter, u16 address)
{
 struct i2c_client *ret;

 ret = i2c_new_dummy_device(adapter, address);
 return IS_ERR(ret) ? ((void*)0) : ret;
}
