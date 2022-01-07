
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * trigger; } ;
struct wacom_led {int group; int id; int trigger; TYPE_1__ cdev; } ;
struct wacom {int dummy; } ;


 struct wacom_led* wacom_led_find (struct wacom*,int,int) ;

struct wacom_led *wacom_led_next(struct wacom *wacom, struct wacom_led *cur)
{
 struct wacom_led *next_led;
 int group, next;

 if (!wacom || !cur)
  return ((void*)0);

 group = cur->group;
 next = cur->id;

 do {
  next_led = wacom_led_find(wacom, group, ++next);
  if (!next_led || next_led == cur)
   return next_led;
 } while (next_led->cdev.trigger != &next_led->trigger);

 return next_led;
}
