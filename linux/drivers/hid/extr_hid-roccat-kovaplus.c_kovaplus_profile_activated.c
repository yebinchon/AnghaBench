
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct kovaplus_device {size_t actual_profile; TYPE_1__* profile_settings; int actual_y_sensitivity; int actual_x_sensitivity; int actual_cpi; } ;
struct TYPE_2__ {int sensitivity_y; int sensitivity_x; int cpi_startup_level; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;

__attribute__((used)) static void kovaplus_profile_activated(struct kovaplus_device *kovaplus,
  uint new_profile_index)
{
 if (new_profile_index >= ARRAY_SIZE(kovaplus->profile_settings))
  return;
 kovaplus->actual_profile = new_profile_index;
 kovaplus->actual_cpi = kovaplus->profile_settings[new_profile_index].cpi_startup_level;
 kovaplus->actual_x_sensitivity = kovaplus->profile_settings[new_profile_index].sensitivity_x;
 kovaplus->actual_y_sensitivity = kovaplus->profile_settings[new_profile_index].sensitivity_y;
}
