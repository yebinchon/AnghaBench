
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_extcon_info {int hpdet_ip_version; struct arizona* arizona; } ;
struct arizona {int dev; int regmap; } ;


 int ARIZONA_HEADPHONE_DETECT_2 ;
 int ARIZONA_HPDET_WAIT_COUNT ;
 int ARIZONA_HPDET_WAIT_DELAY_MS ;
 unsigned int ARIZONA_HP_DONE ;
 unsigned int ARIZONA_HP_DONE_B ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int arizona_hpdet_wait(struct arizona_extcon_info *info)
{
 struct arizona *arizona = info->arizona;
 unsigned int val;
 int i, ret;

 for (i = 0; i < ARIZONA_HPDET_WAIT_COUNT; i++) {
  ret = regmap_read(arizona->regmap, ARIZONA_HEADPHONE_DETECT_2,
    &val);
  if (ret) {
   dev_err(arizona->dev,
    "Failed to read HPDET state: %d\n", ret);
   return ret;
  }

  switch (info->hpdet_ip_version) {
  case 0:
   if (val & ARIZONA_HP_DONE)
    return 0;
   break;
  default:
   if (val & ARIZONA_HP_DONE_B)
    return 0;
   break;
  }

  msleep(ARIZONA_HPDET_WAIT_DELAY_MS);
 }

 dev_warn(arizona->dev, "HPDET did not appear to complete\n");

 return -ETIMEDOUT;
}
