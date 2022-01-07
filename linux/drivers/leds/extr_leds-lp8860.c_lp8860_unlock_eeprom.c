
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp8860_led {int lock; int regmap; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int LP8860_EEPROM_CODE_1 ;
 int LP8860_EEPROM_CODE_2 ;
 int LP8860_EEPROM_CODE_3 ;
 int LP8860_EEPROM_UNLOCK ;
 int LP8860_LOCK_EEPROM ;
 int LP8860_UNLOCK_EEPROM ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int lp8860_unlock_eeprom(struct lp8860_led *led, int lock)
{
 int ret;

 mutex_lock(&led->lock);

 if (lock == LP8860_UNLOCK_EEPROM) {
  ret = regmap_write(led->regmap,
   LP8860_EEPROM_UNLOCK,
   LP8860_EEPROM_CODE_1);
  if (ret) {
   dev_err(&led->client->dev, "EEPROM Unlock failed\n");
   goto out;
  }

  ret = regmap_write(led->regmap,
   LP8860_EEPROM_UNLOCK,
   LP8860_EEPROM_CODE_2);
  if (ret) {
   dev_err(&led->client->dev, "EEPROM Unlock failed\n");
   goto out;
  }
  ret = regmap_write(led->regmap,
   LP8860_EEPROM_UNLOCK,
   LP8860_EEPROM_CODE_3);
  if (ret) {
   dev_err(&led->client->dev, "EEPROM Unlock failed\n");
   goto out;
  }
 } else {
  ret = regmap_write(led->regmap,
   LP8860_EEPROM_UNLOCK,
   LP8860_LOCK_EEPROM);
 }

out:
 mutex_unlock(&led->lock);
 return ret;
}
