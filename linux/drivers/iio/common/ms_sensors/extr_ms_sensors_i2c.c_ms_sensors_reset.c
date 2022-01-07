
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int usleep_range (unsigned int,unsigned int) ;

int ms_sensors_reset(void *cli, u8 cmd, unsigned int delay)
{
 int ret;
 struct i2c_client *client = cli;

 ret = i2c_smbus_write_byte(client, cmd);
 if (ret) {
  dev_err(&client->dev, "Failed to reset device\n");
  return ret;
 }
 usleep_range(delay, delay + 1000);

 return 0;
}
