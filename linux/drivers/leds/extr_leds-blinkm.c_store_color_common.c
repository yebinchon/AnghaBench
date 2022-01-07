
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct blinkm_data {void* next_blue; void* next_green; void* next_red; } ;


 int BLM_GO_RGB ;

 int EINVAL ;


 int blinkm_transfer_hw (struct i2c_client*,int ) ;
 int dev_dbg (struct device*,char*,void*,void*,void*) ;
 int dev_err (struct device*,char*) ;
 struct blinkm_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtou8 (char const*,int,void**) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int store_color_common(struct device *dev, const char *buf, int color)
{
 struct i2c_client *client;
 struct blinkm_data *data;
 int ret;
 u8 value;

 client = to_i2c_client(dev);
 data = i2c_get_clientdata(client);

 ret = kstrtou8(buf, 10, &value);
 if (ret < 0) {
  dev_err(dev, "BlinkM: value too large!\n");
  return ret;
 }

 switch (color) {
 case 128:
  data->next_red = value;
  break;
 case 129:
  data->next_green = value;
  break;
 case 130:
  data->next_blue = value;
  break;
 default:
  return -EINVAL;
 }

 dev_dbg(dev, "next_red = %d, next_green = %d, next_blue = %d\n",
   data->next_red, data->next_green, data->next_blue);


 ret = blinkm_transfer_hw(client, BLM_GO_RGB);
 if (ret < 0) {
  dev_err(dev, "BlinkM: can't set RGB\n");
  return ret;
 }
 return 0;
}
