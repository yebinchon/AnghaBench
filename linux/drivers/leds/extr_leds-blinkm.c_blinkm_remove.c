
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct blinkm_data {int next_red; int next_green; int next_blue; int next_hue; int next_saturation; int next_brightness; TYPE_1__* blinkm_leds; } ;
struct TYPE_3__ {int led_cdev; } ;


 int BLM_FADE_HSB ;
 int BLM_FADE_RGB ;
 int BLM_GO_RGB ;
 int blinkm_group ;
 int blinkm_transfer_hw (struct i2c_client*,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct blinkm_data* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int blinkm_remove(struct i2c_client *client)
{
 struct blinkm_data *data = i2c_get_clientdata(client);
 int ret = 0;
 int i;


 for (i = 0; i < 3; i++)
  led_classdev_unregister(&data->blinkm_leds[i].led_cdev);


 data->next_red = 0x00;
 data->next_green = 0x00;
 data->next_blue = 0x00;
 ret = blinkm_transfer_hw(client, BLM_FADE_RGB);
 if (ret < 0)
  dev_err(&client->dev, "Failure in blinkm_remove ignored. Continuing.\n");


 data->next_hue = 0x00;
 data->next_saturation = 0x00;
 data->next_brightness = 0x00;
 ret = blinkm_transfer_hw(client, BLM_FADE_HSB);
 if (ret < 0)
  dev_err(&client->dev, "Failure in blinkm_remove ignored. Continuing.\n");


 data->next_red = 0xff;
 ret = blinkm_transfer_hw(client, BLM_GO_RGB);
 if (ret < 0)
  dev_err(&client->dev, "Failure in blinkm_remove ignored. Continuing.\n");


 data->next_red = 0x00;
 ret = blinkm_transfer_hw(client, BLM_FADE_RGB);
 if (ret < 0)
  dev_err(&client->dev, "Failure in blinkm_remove ignored. Continuing.\n");

 sysfs_remove_group(&client->dev.kobj, &blinkm_group);
 return 0;
}
