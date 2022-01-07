
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pca963x_led {int led_num; int gdc; int gfrq; TYPE_2__* chip; } ;
struct TYPE_4__ {int mutex; int client; TYPE_1__* chipdef; } ;
struct TYPE_3__ {int ledout_base; int grppwm; int grpfreq; } ;


 int PCA963X_LED_GRP_PWM ;
 int PCA963X_MODE2 ;
 int PCA963X_MODE2_DMBLNK ;
 int i2c_smbus_read_byte_data (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void pca963x_blink(struct pca963x_led *pca963x)
{
 u8 ledout_addr = pca963x->chip->chipdef->ledout_base +
  (pca963x->led_num / 4);
 u8 ledout;
 u8 mode2 = i2c_smbus_read_byte_data(pca963x->chip->client,
       PCA963X_MODE2);
 int shift = 2 * (pca963x->led_num % 4);
 u8 mask = 0x3 << shift;

 i2c_smbus_write_byte_data(pca963x->chip->client,
   pca963x->chip->chipdef->grppwm, pca963x->gdc);

 i2c_smbus_write_byte_data(pca963x->chip->client,
   pca963x->chip->chipdef->grpfreq, pca963x->gfrq);

 if (!(mode2 & PCA963X_MODE2_DMBLNK))
  i2c_smbus_write_byte_data(pca963x->chip->client, PCA963X_MODE2,
   mode2 | PCA963X_MODE2_DMBLNK);

 mutex_lock(&pca963x->chip->mutex);
 ledout = i2c_smbus_read_byte_data(pca963x->chip->client, ledout_addr);
 if ((ledout & mask) != (PCA963X_LED_GRP_PWM << shift))
  i2c_smbus_write_byte_data(pca963x->chip->client, ledout_addr,
   (ledout & ~mask) | (PCA963X_LED_GRP_PWM << shift));
 mutex_unlock(&pca963x->chip->mutex);
}
