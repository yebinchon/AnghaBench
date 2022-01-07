
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int desc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* led_type_map ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int powernv_get_led_type(const char *led_type_desc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(led_type_map); i++)
  if (!strcmp(led_type_map[i].desc, led_type_desc))
   return led_type_map[i].type;

 return -1;
}
