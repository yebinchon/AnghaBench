
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp007_data {int config; int client; } ;


 int TMP007_CONFIG ;
 int TMP007_CONFIG_CONV_EN ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;

__attribute__((used)) static int tmp007_powerdown(struct tmp007_data *data)
{
 return i2c_smbus_write_word_swapped(data->client, TMP007_CONFIG,
   data->config & ~TMP007_CONFIG_CONV_EN);
}
