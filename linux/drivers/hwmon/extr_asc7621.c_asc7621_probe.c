
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct asc7621_data {int class_dev; int update_lock; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_5__ {TYPE_1__ sda; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int asc7621_init_client (struct i2c_client*) ;
 TYPE_2__* asc7621_params ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 struct asc7621_data* devm_kzalloc (int *,int,int ) ;
 int hwmon_device_register (int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct asc7621_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int
asc7621_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct asc7621_data *data;
 int i, err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 data = devm_kzalloc(&client->dev, sizeof(struct asc7621_data),
       GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 asc7621_init_client(client);


 for (i = 0; i < ARRAY_SIZE(asc7621_params); i++) {
  err =
      device_create_file(&client->dev,
           &(asc7621_params[i].sda.dev_attr));
  if (err)
   goto exit_remove;
 }

 data->class_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->class_dev)) {
  err = PTR_ERR(data->class_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 for (i = 0; i < ARRAY_SIZE(asc7621_params); i++) {
  device_remove_file(&client->dev,
       &(asc7621_params[i].sda.dev_attr));
 }

 return err;
}
