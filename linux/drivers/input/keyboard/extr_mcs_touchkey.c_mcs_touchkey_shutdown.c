
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_touchkey_data {int (* poweron ) (int) ;} ;
struct i2c_client {int dummy; } ;


 struct mcs_touchkey_data* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (int) ;

__attribute__((used)) static void mcs_touchkey_shutdown(struct i2c_client *client)
{
 struct mcs_touchkey_data *data = i2c_get_clientdata(client);

 if (data->poweron)
  data->poweron(0);
}
