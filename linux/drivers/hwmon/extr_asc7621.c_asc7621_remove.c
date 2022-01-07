
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct asc7621_data {int class_dev; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_5__ {TYPE_1__ sda; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* asc7621_params ;
 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (int ) ;
 struct asc7621_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int asc7621_remove(struct i2c_client *client)
{
 struct asc7621_data *data = i2c_get_clientdata(client);
 int i;

 hwmon_device_unregister(data->class_dev);

 for (i = 0; i < ARRAY_SIZE(asc7621_params); i++) {
  device_remove_file(&client->dev,
       &(asc7621_params[i].sda.dev_attr));
 }

 return 0;
}
