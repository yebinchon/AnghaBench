
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidled_led {TYPE_1__* rgb; } ;
struct TYPE_2__ {struct hidled_led const green; struct hidled_led const red; } ;


 int DELCOM_BLUE_LED ;
 int DELCOM_GREEN_LED ;
 int DELCOM_RED_LED ;

__attribute__((used)) static inline int delcom_get_lednum(const struct hidled_led *led)
{
 if (led == &led->rgb->red)
  return DELCOM_RED_LED;
 else if (led == &led->rgb->green)
  return DELCOM_GREEN_LED;
 else
  return DELCOM_BLUE_LED;
}
