
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {void* max_brightness; } ;
struct max8997_led {int led_mode; TYPE_2__* iodev; TYPE_1__ cdev; int id; } ;
struct i2c_client {int dummy; } ;
typedef enum max8997_led_mode { ____Placeholder_max8997_led_mode } max8997_led_mode ;
struct TYPE_4__ {int dev; struct i2c_client* i2c; } ;




 int MAX8997_LED0_FLASH_MASK ;
 int MAX8997_LED0_FLASH_PIN_MASK ;
 int MAX8997_LED0_MOVIE_MASK ;
 int MAX8997_LED0_MOVIE_PIN_MASK ;
 int MAX8997_LED1_FLASH_MASK ;
 int MAX8997_LED1_FLASH_PIN_MASK ;
 int MAX8997_LED1_MOVIE_MASK ;
 int MAX8997_LED1_MOVIE_PIN_MASK ;
 void* MAX8997_LED_FLASH_MAX_BRIGHTNESS ;
 void* MAX8997_LED_MOVIE_MAX_BRIGHTNESS ;
 void* MAX8997_LED_NONE_MAX_BRIGHTNESS ;


 int MAX8997_REG_LEN_CNTL ;
 int dev_err (int ,char*,int) ;
 int max8997_update_reg (struct i2c_client*,int ,int,int) ;

__attribute__((used)) static void max8997_led_set_mode(struct max8997_led *led,
   enum max8997_led_mode mode)
{
 int ret;
 struct i2c_client *client = led->iodev->i2c;
 u8 mask = 0, val;

 switch (mode) {
 case 131:
  mask = MAX8997_LED1_FLASH_MASK | MAX8997_LED0_FLASH_MASK;
  val = led->id ?
        MAX8997_LED1_FLASH_MASK : MAX8997_LED0_FLASH_MASK;
  led->cdev.max_brightness = MAX8997_LED_FLASH_MAX_BRIGHTNESS;
  break;
 case 129:
  mask = MAX8997_LED1_MOVIE_MASK | MAX8997_LED0_MOVIE_MASK;
  val = led->id ?
        MAX8997_LED1_MOVIE_MASK : MAX8997_LED0_MOVIE_MASK;
  led->cdev.max_brightness = MAX8997_LED_MOVIE_MAX_BRIGHTNESS;
  break;
 case 130:
  mask = MAX8997_LED1_FLASH_PIN_MASK |
         MAX8997_LED0_FLASH_PIN_MASK;
  val = led->id ?
        MAX8997_LED1_FLASH_PIN_MASK : MAX8997_LED0_FLASH_PIN_MASK;
  led->cdev.max_brightness = MAX8997_LED_FLASH_MAX_BRIGHTNESS;
  break;
 case 128:
  mask = MAX8997_LED1_MOVIE_PIN_MASK |
         MAX8997_LED0_MOVIE_PIN_MASK;
  val = led->id ?
        MAX8997_LED1_MOVIE_PIN_MASK : MAX8997_LED0_MOVIE_PIN_MASK;
  led->cdev.max_brightness = MAX8997_LED_MOVIE_MAX_BRIGHTNESS;
  break;
 default:
  led->cdev.max_brightness = MAX8997_LED_NONE_MAX_BRIGHTNESS;
  break;
 }

 if (mask) {
  ret = max8997_update_reg(client, MAX8997_REG_LEN_CNTL, val,
      mask);
  if (ret)
   dev_err(led->iodev->dev,
    "failed to update register(%d)\n", ret);
 }

 led->led_mode = mode;
}
