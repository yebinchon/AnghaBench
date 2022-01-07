
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ IS_ERR (struct i2c_client*) ;
 struct i2c_client* i2c_new_client_device (struct i2c_adapter*,struct i2c_board_info const*) ;

struct i2c_client *
i2c_new_device(struct i2c_adapter *adap, struct i2c_board_info const *info)
{
 struct i2c_client *ret;

 ret = i2c_new_client_device(adap, info);
 return IS_ERR(ret) ? ((void*)0) : ret;
}
