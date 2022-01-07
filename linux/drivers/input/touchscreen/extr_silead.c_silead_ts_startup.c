
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int SILEAD_REG_RESET ;
 int SILEAD_STARTUP_SLEEP ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static int silead_ts_startup(struct i2c_client *client)
{
 int error;

 error = i2c_smbus_write_byte_data(client, SILEAD_REG_RESET, 0x00);
 if (error) {
  dev_err(&client->dev, "Startup error %d\n", error);
  return error;
 }

 msleep(SILEAD_STARTUP_SLEEP);

 return 0;
}
