
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int SILEAD_POWER_OFF ;
 int SILEAD_POWER_ON ;
 scalar_t__ SILEAD_STATUS_OK ;
 int dev_err (int *,char*,scalar_t__) ;
 int silead_ts_get_id (struct i2c_client*) ;
 scalar_t__ silead_ts_get_status (struct i2c_client*) ;
 int silead_ts_init (struct i2c_client*) ;
 int silead_ts_load_fw (struct i2c_client*) ;
 int silead_ts_reset (struct i2c_client*) ;
 int silead_ts_set_power (struct i2c_client*,int ) ;
 int silead_ts_startup (struct i2c_client*) ;

__attribute__((used)) static int silead_ts_setup(struct i2c_client *client)
{
 int error;
 u32 status;

 silead_ts_set_power(client, SILEAD_POWER_OFF);
 silead_ts_set_power(client, SILEAD_POWER_ON);

 error = silead_ts_get_id(client);
 if (error)
  return error;

 error = silead_ts_init(client);
 if (error)
  return error;

 error = silead_ts_reset(client);
 if (error)
  return error;

 error = silead_ts_load_fw(client);
 if (error)
  return error;

 error = silead_ts_startup(client);
 if (error)
  return error;

 status = silead_ts_get_status(client);
 if (status != SILEAD_STATUS_OK) {
  dev_err(&client->dev,
   "Initialization error, status: 0x%X\n", status);
  return -ENODEV;
 }

 return 0;
}
