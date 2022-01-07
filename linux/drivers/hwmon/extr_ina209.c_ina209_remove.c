
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina209_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct ina209_data* i2c_get_clientdata (struct i2c_client*) ;
 int ina209_restore_conf (struct i2c_client*,struct ina209_data*) ;

__attribute__((used)) static int ina209_remove(struct i2c_client *client)
{
 struct ina209_data *data = i2c_get_clientdata(client);

 ina209_restore_conf(client, data);

 return 0;
}
