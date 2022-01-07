
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_platform_data {int x_size; int y_size; } ;
struct mcs5000_ts_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int MCS5000_TS_OP_MODE ;
 int MCS5000_TS_X_SIZE_LOWER ;
 int MCS5000_TS_X_SIZE_UPPER ;
 int MCS5000_TS_Y_SIZE_LOWER ;
 int MCS5000_TS_Y_SIZE_UPPER ;
 int OP_MODE_ACTIVE ;
 int OP_MODE_SLEEP ;
 int REPORT_RATE_80 ;
 int RESET_EXT_SOFT ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void mcs5000_ts_phys_init(struct mcs5000_ts_data *data,
     const struct mcs_platform_data *platform_data)
{
 struct i2c_client *client = data->client;


 i2c_smbus_write_byte_data(client, MCS5000_TS_OP_MODE,
   RESET_EXT_SOFT | OP_MODE_SLEEP);


 i2c_smbus_write_byte_data(client, MCS5000_TS_X_SIZE_UPPER,
   platform_data->x_size >> 8);
 i2c_smbus_write_byte_data(client, MCS5000_TS_X_SIZE_LOWER,
   platform_data->x_size & 0xff);
 i2c_smbus_write_byte_data(client, MCS5000_TS_Y_SIZE_UPPER,
   platform_data->y_size >> 8);
 i2c_smbus_write_byte_data(client, MCS5000_TS_Y_SIZE_LOWER,
   platform_data->y_size & 0xff);


 i2c_smbus_write_byte_data(data->client, MCS5000_TS_OP_MODE,
   OP_MODE_ACTIVE | REPORT_RATE_80);
}
