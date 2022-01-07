
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness_set_blocking; int brightness_get; int max_brightness; int name; } ;
struct ims_pcu_backlight {TYPE_1__ cdev; int name; } ;
struct ims_pcu {int device_no; int dev; struct ims_pcu_backlight backlight; } ;


 int IMS_PCU_MAX_BRIGHTNESS ;
 int dev_err (int ,char*,int) ;
 int ims_pcu_backlight_get_brightness ;
 int ims_pcu_backlight_set_brightness ;
 int led_classdev_register (int ,TYPE_1__*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int ims_pcu_setup_backlight(struct ims_pcu *pcu)
{
 struct ims_pcu_backlight *backlight = &pcu->backlight;
 int error;

 snprintf(backlight->name, sizeof(backlight->name),
   "pcu%d::kbd_backlight", pcu->device_no);

 backlight->cdev.name = backlight->name;
 backlight->cdev.max_brightness = IMS_PCU_MAX_BRIGHTNESS;
 backlight->cdev.brightness_get = ims_pcu_backlight_get_brightness;
 backlight->cdev.brightness_set_blocking =
      ims_pcu_backlight_set_brightness;

 error = led_classdev_register(pcu->dev, &backlight->cdev);
 if (error) {
  dev_err(pcu->dev,
   "Failed to register backlight LED device, error: %d\n",
   error);
  return error;
 }

 return 0;
}
