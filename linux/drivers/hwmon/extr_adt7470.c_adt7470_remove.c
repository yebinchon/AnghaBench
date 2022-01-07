
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adt7470_data {int auto_update; } ;


 struct adt7470_data* i2c_get_clientdata (struct i2c_client*) ;
 int kthread_stop (int ) ;

__attribute__((used)) static int adt7470_remove(struct i2c_client *client)
{
 struct adt7470_data *data = i2c_get_clientdata(client);

 kthread_stop(data->auto_update);
 return 0;
}
