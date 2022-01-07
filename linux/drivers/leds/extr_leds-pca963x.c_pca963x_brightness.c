
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pca963x_led {int led_num; TYPE_2__* chip; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {int client; TYPE_1__* chipdef; } ;
struct TYPE_3__ {int ledout_base; } ;




 int PCA963X_LED_ON ;
 int PCA963X_LED_PWM ;
 int PCA963X_PWM_BASE ;
 int i2c_smbus_read_byte_data (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;

__attribute__((used)) static int pca963x_brightness(struct pca963x_led *pca963x,
          enum led_brightness brightness)
{
 u8 ledout_addr = pca963x->chip->chipdef->ledout_base
  + (pca963x->led_num / 4);
 u8 ledout;
 int shift = 2 * (pca963x->led_num % 4);
 u8 mask = 0x3 << shift;
 int ret;

 ledout = i2c_smbus_read_byte_data(pca963x->chip->client, ledout_addr);
 switch (brightness) {
 case 129:
  ret = i2c_smbus_write_byte_data(pca963x->chip->client,
   ledout_addr,
   (ledout & ~mask) | (PCA963X_LED_ON << shift));
  break;
 case 128:
  ret = i2c_smbus_write_byte_data(pca963x->chip->client,
   ledout_addr, ledout & ~mask);
  break;
 default:
  ret = i2c_smbus_write_byte_data(pca963x->chip->client,
   PCA963X_PWM_BASE + pca963x->led_num,
   brightness);
  if (ret < 0)
   return ret;
  ret = i2c_smbus_write_byte_data(pca963x->chip->client,
   ledout_addr,
   (ledout & ~mask) | (PCA963X_LED_PWM << shift));
  break;
 }

 return ret;
}
