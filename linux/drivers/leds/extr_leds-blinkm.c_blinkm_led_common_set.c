
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct led_classdev {int dummy; } ;
struct blinkm_led {TYPE_1__* i2c_client; } ;
struct blinkm_data {void* next_red; void* next_green; void* next_blue; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {int dev; } ;


 int BLM_GO_RGB ;

 int EINVAL ;


 int blinkm_transfer_hw (TYPE_1__*,int ) ;
 struct blinkm_led* cdev_to_blmled (struct led_classdev*) ;
 int dev_dbg (int *,char*,void*,void*,void*) ;
 int dev_err (int *,char*) ;
 struct blinkm_data* i2c_get_clientdata (TYPE_1__*) ;

__attribute__((used)) static int blinkm_led_common_set(struct led_classdev *led_cdev,
     enum led_brightness value, int color)
{

 struct blinkm_led *led = cdev_to_blmled(led_cdev);
 struct blinkm_data *data = i2c_get_clientdata(led->i2c_client);

 switch (color) {
 case 128:

  if (data->next_red == (u8) value)
   return 0;
  data->next_red = (u8) value;
  break;
 case 129:

  if (data->next_green == (u8) value)
   return 0;
  data->next_green = (u8) value;
  break;
 case 130:

  if (data->next_blue == (u8) value)
   return 0;
  data->next_blue = (u8) value;
  break;

 default:
  dev_err(&led->i2c_client->dev, "BlinkM: unknown color.\n");
  return -EINVAL;
 }

 blinkm_transfer_hw(led->i2c_client, BLM_GO_RGB);
 dev_dbg(&led->i2c_client->dev,
   "# DONE # next_red = %d, next_green = %d,"
   " next_blue = %d\n",
   data->next_red, data->next_green,
   data->next_blue);
 return 0;
}
