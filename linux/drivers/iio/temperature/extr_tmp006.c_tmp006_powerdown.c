
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp006_data {int config; int client; } ;


 int TMP006_CONFIG ;
 int TMP006_CONFIG_MOD_MASK ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;

__attribute__((used)) static int tmp006_powerdown(struct tmp006_data *data)
{
 return i2c_smbus_write_word_swapped(data->client, TMP006_CONFIG,
  data->config & ~TMP006_CONFIG_MOD_MASK);
}
