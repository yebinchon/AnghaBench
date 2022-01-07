
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_led {int dummy; } ;
struct wacom_group_leds {unsigned int count; struct wacom_led* leds; } ;
struct TYPE_2__ {unsigned int count; struct wacom_group_leds* groups; } ;
struct wacom {TYPE_1__ led; } ;



struct wacom_led *wacom_led_find(struct wacom *wacom, unsigned int group_id,
     unsigned int id)
{
 struct wacom_group_leds *group;

 if (group_id >= wacom->led.count)
  return ((void*)0);

 group = &wacom->led.groups[group_id];

 if (!group->leds)
  return ((void*)0);

 id %= group->count;

 return &group->leds[id];
}
