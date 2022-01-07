
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nasgpio_led {int name; } ;


 int ARRAY_SIZE (struct nasgpio_led*) ;
 struct nasgpio_led* nasgpio_leds ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct nasgpio_led *get_led_named(char *name)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(nasgpio_leds); i++) {
  if (strcmp(nasgpio_leds[i].name, name))
   continue;
  return &nasgpio_leds[i];
 }
 return ((void*)0);
}
