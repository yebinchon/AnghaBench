
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acx565akm_panel {TYPE_2__* backlight; scalar_t__ has_cabc; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int acx565akm_cabc_attr_group ;
 int backlight_device_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void acx565akm_backlight_cleanup(struct acx565akm_panel *lcd)
{
 if (lcd->has_cabc)
  sysfs_remove_group(&lcd->backlight->dev.kobj,
       &acx565akm_cabc_attr_group);

 backlight_device_unregister(lcd->backlight);
}
