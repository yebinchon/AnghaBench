
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int) ;

int ms_sensors_read_prom_word(void *cli, int cmd, u16 *word)
{
 int ret;
 struct i2c_client *client = cli;

 ret = i2c_smbus_read_word_swapped(client, cmd);
 if (ret < 0) {
  dev_err(&client->dev, "Failed to read prom word\n");
  return ret;
 }
 *word = ret;

 return 0;
}
