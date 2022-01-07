
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyra_device {unsigned int actual_profile; TYPE_1__* profile_settings; int actual_cpi; } ;
struct TYPE_2__ {int y_cpi; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;

__attribute__((used)) static void profile_activated(struct pyra_device *pyra,
  unsigned int new_profile)
{
 if (new_profile >= ARRAY_SIZE(pyra->profile_settings))
  return;
 pyra->actual_profile = new_profile;
 pyra->actual_cpi = pyra->profile_settings[pyra->actual_profile].y_cpi;
}
