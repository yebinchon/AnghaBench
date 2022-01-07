
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int* fan_div; int* fan_min; struct i2c_client* client; } ;


 int ADM1026_REG_FAN_MIN (int) ;
 int adm1026_write_value (struct i2c_client*,int ,int) ;
 int clamp_val (int,int,int) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void fixup_fan_min(struct device *dev, int fan, int old_div)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int new_min;
 int new_div = data->fan_div[fan];


 if (data->fan_min[fan] == 0 || data->fan_min[fan] == 0xff)
  return;

 new_min = data->fan_min[fan] * old_div / new_div;
 new_min = clamp_val(new_min, 1, 254);
 data->fan_min[fan] = new_min;
 adm1026_write_value(client, ADM1026_REG_FAN_MIN(fan), new_min);
}
