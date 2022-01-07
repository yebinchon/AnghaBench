
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct blinkm_data {int blue; int green; int red; } ;
typedef int ssize_t ;


 int BLM_GET_CUR_RGB ;

 int EINVAL ;

 int PAGE_SIZE ;

 int blinkm_transfer_hw (struct i2c_client*,int ) ;
 struct blinkm_data* i2c_get_clientdata (struct i2c_client*) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t show_color_common(struct device *dev, char *buf, int color)
{
 struct i2c_client *client;
 struct blinkm_data *data;
 int ret;

 client = to_i2c_client(dev);
 data = i2c_get_clientdata(client);

 ret = blinkm_transfer_hw(client, BLM_GET_CUR_RGB);
 if (ret < 0)
  return ret;
 switch (color) {
 case 128:
  return scnprintf(buf, PAGE_SIZE, "%02X\n", data->red);
 case 129:
  return scnprintf(buf, PAGE_SIZE, "%02X\n", data->green);
 case 130:
  return scnprintf(buf, PAGE_SIZE, "%02X\n", data->blue);
 default:
  return -EINVAL;
 }
 return -EINVAL;
}
