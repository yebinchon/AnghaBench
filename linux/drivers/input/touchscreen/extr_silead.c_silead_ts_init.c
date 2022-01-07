
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct silead_ts_data {int max_fingers; } ;
struct i2c_client {int dev; } ;


 int SILEAD_CLOCK ;
 int SILEAD_CMD_RESET ;
 int SILEAD_CMD_SLEEP_MAX ;
 int SILEAD_CMD_SLEEP_MIN ;
 int SILEAD_CMD_START ;
 int SILEAD_REG_CLOCK ;
 int SILEAD_REG_RESET ;
 int SILEAD_REG_TOUCH_NR ;
 int dev_err (int *,char*,int) ;
 struct silead_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int silead_ts_init(struct i2c_client *client)
{
 struct silead_ts_data *data = i2c_get_clientdata(client);
 int error;

 error = i2c_smbus_write_byte_data(client, SILEAD_REG_RESET,
       SILEAD_CMD_RESET);
 if (error)
  goto i2c_write_err;
 usleep_range(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

 error = i2c_smbus_write_byte_data(client, SILEAD_REG_TOUCH_NR,
     data->max_fingers);
 if (error)
  goto i2c_write_err;
 usleep_range(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

 error = i2c_smbus_write_byte_data(client, SILEAD_REG_CLOCK,
       SILEAD_CLOCK);
 if (error)
  goto i2c_write_err;
 usleep_range(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

 error = i2c_smbus_write_byte_data(client, SILEAD_REG_RESET,
       SILEAD_CMD_START);
 if (error)
  goto i2c_write_err;
 usleep_range(SILEAD_CMD_SLEEP_MIN, SILEAD_CMD_SLEEP_MAX);

 return 0;

i2c_write_err:
 dev_err(&client->dev, "Registers clear error %d\n", error);
 return error;
}
