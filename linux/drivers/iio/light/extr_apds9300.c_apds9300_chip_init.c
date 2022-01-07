
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apds9300_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int APDS9300_CMD ;
 int APDS9300_CONTROL ;
 int APDS9300_POWER_ON ;
 int ENODEV ;
 int apds9300_set_intr_state (struct apds9300_data*,int ) ;
 int apds9300_set_power_state (struct apds9300_data*,int) ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int) ;

__attribute__((used)) static int apds9300_chip_init(struct apds9300_data *data)
{
 int ret;


 ret = apds9300_set_power_state(data, 0);
 if (ret < 0)
  goto err;




 ret = apds9300_set_power_state(data, 1);
 if (ret < 0)
  goto err;
 ret = i2c_smbus_read_byte_data(data->client,
   APDS9300_CONTROL | APDS9300_CMD);
 if (ret != APDS9300_POWER_ON) {
  ret = -ENODEV;
  goto err;
 }




 ret = apds9300_set_intr_state(data, 0);
 if (ret < 0)
  goto err;

 return 0;

err:
 dev_err(&data->client->dev, "failed to init the chip\n");
 return ret;
}
