
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct blinkm_data {int next_red; int next_green; int next_blue; int next_hue; int next_saturation; int next_brightness; } ;


 int BLM_FADE_HSB ;
 int BLM_FADE_RGB ;
 int BLM_GO_RGB ;
 int blinkm_transfer_hw (struct i2c_client*,int ) ;
 struct blinkm_data* i2c_get_clientdata (struct i2c_client*) ;
 int msleep (int) ;

__attribute__((used)) static int blinkm_test_run(struct i2c_client *client)
{
 int ret;
 struct blinkm_data *data = i2c_get_clientdata(client);

 data->next_red = 0x01;
 data->next_green = 0x05;
 data->next_blue = 0x10;
 ret = blinkm_transfer_hw(client, BLM_GO_RGB);
 if (ret < 0)
  return ret;
 msleep(2000);

 data->next_red = 0x25;
 data->next_green = 0x10;
 data->next_blue = 0x31;
 ret = blinkm_transfer_hw(client, BLM_FADE_RGB);
 if (ret < 0)
  return ret;
 msleep(2000);

 data->next_hue = 0x50;
 data->next_saturation = 0x10;
 data->next_brightness = 0x20;
 ret = blinkm_transfer_hw(client, BLM_FADE_HSB);
 if (ret < 0)
  return ret;
 msleep(2000);

 return 0;
}
