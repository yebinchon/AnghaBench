
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode_val; int mode; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* mode_map ;
 scalar_t__ sysfs_streq (char const*,int ) ;

__attribute__((used)) static int lm3530_get_mode_from_str(const char *str)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mode_map); i++)
  if (sysfs_streq(str, mode_map[i].mode))
   return mode_map[i].mode_val;

 return -EINVAL;
}
