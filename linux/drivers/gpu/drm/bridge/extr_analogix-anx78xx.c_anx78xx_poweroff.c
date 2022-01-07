
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx_platform_data {scalar_t__ dvdd10; int gpiod_pd; int gpiod_reset; } ;
struct anx78xx {int powered; struct anx78xx_platform_data pdata; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ WARN_ON (int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_disable (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void anx78xx_poweroff(struct anx78xx *anx78xx)
{
 struct anx78xx_platform_data *pdata = &anx78xx->pdata;
 int err;

 if (WARN_ON(!anx78xx->powered))
  return;

 gpiod_set_value_cansleep(pdata->gpiod_reset, 1);
 usleep_range(1000, 2000);

 gpiod_set_value_cansleep(pdata->gpiod_pd, 1);
 usleep_range(1000, 2000);

 if (pdata->dvdd10) {
  err = regulator_disable(pdata->dvdd10);
  if (err) {
   DRM_ERROR("Failed to disable DVDD10 regulator: %d\n",
      err);
   return;
  }

  usleep_range(1000, 2000);
 }

 anx78xx->powered = 0;
}
