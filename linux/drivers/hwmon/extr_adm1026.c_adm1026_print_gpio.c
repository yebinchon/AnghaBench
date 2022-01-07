
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct adm1026_data {int config2; int* gpio_config; int config3; } ;


 int CFG3_GPIO16_ENABLE ;
 int dev_dbg (int *,char*,...) ;
 struct adm1026_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void adm1026_print_gpio(struct i2c_client *client)
{
 struct adm1026_data *data = i2c_get_clientdata(client);
 int i;

 dev_dbg(&client->dev, "GPIO config is:\n");
 for (i = 0; i <= 7; ++i) {
  if (data->config2 & (1 << i)) {
   dev_dbg(&client->dev, "\t%sGP%s%d\n",
    data->gpio_config[i] & 0x02 ? "" : "!",
    data->gpio_config[i] & 0x01 ? "OUT" : "IN",
    i);
  } else {
   dev_dbg(&client->dev, "\tFAN%d\n", i);
  }
 }
 for (i = 8; i <= 15; ++i) {
  dev_dbg(&client->dev, "\t%sGP%s%d\n",
   data->gpio_config[i] & 0x02 ? "" : "!",
   data->gpio_config[i] & 0x01 ? "OUT" : "IN",
   i);
 }
 if (data->config3 & CFG3_GPIO16_ENABLE) {
  dev_dbg(&client->dev, "\t%sGP%s16\n",
   data->gpio_config[16] & 0x02 ? "" : "!",
   data->gpio_config[16] & 0x01 ? "OUT" : "IN");
 } else {

  dev_dbg(&client->dev, "\tTHERM\n");
 }
}
