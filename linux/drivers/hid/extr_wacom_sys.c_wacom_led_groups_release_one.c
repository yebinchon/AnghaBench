
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_group_leds {int dev; } ;


 int devres_release_group (int ,struct wacom_group_leds*) ;

__attribute__((used)) static void wacom_led_groups_release_one(void *data)
{
 struct wacom_group_leds *group = data;

 devres_release_group(group->dev, group);
}
