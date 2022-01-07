
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ brightness; } ;
struct pca963x_led {TYPE_1__* chip; int led_num; TYPE_2__ led_cdev; } ;
struct TYPE_3__ {unsigned long leds_on; int client; } ;


 int BIT (int) ;
 int PCA963X_MODE1 ;
 int clear_bit (int ,unsigned long*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static int pca963x_power_state(struct pca963x_led *pca963x)
{
 unsigned long *leds_on = &pca963x->chip->leds_on;
 unsigned long cached_leds = pca963x->chip->leds_on;

 if (pca963x->led_cdev.brightness)
  set_bit(pca963x->led_num, leds_on);
 else
  clear_bit(pca963x->led_num, leds_on);

 if (!(*leds_on) != !cached_leds)
  return i2c_smbus_write_byte_data(pca963x->chip->client,
   PCA963X_MODE1, *leds_on ? 0 : BIT(4));

 return 0;
}
