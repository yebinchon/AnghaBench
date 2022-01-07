
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdc100x_data {int config; int client; } ;


 int HDC100X_REG_CONFIG ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;

__attribute__((used)) static int hdc100x_update_config(struct hdc100x_data *data, int mask, int val)
{
 int tmp = (~mask & data->config) | val;
 int ret;

 ret = i2c_smbus_write_word_swapped(data->client,
      HDC100X_REG_CONFIG, tmp);
 if (!ret)
  data->config = tmp;

 return ret;
}
