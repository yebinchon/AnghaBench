
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pca9532_data {TYPE_1__* chip_info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int num_leds; } ;


 struct pca9532_data* i2c_get_clientdata (struct i2c_client*) ;
 int pca9532_destroy_devices (struct pca9532_data*,int ) ;

__attribute__((used)) static int pca9532_remove(struct i2c_client *client)
{
 struct pca9532_data *data = i2c_get_clientdata(client);
 int err;

 err = pca9532_destroy_devices(data, data->chip_info->num_leds);
 if (err)
  return err;

 return 0;
}
