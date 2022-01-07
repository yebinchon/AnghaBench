
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_key_backlight; } ;


 int BACKLIGHT_KEY ;
 int applesmc_write_key (int ,int ,int) ;
 int backlight_state ;
 TYPE_1__ smcreg ;

__attribute__((used)) static int applesmc_pm_resume(struct device *dev)
{
 if (smcreg.has_key_backlight)
  applesmc_write_key(BACKLIGHT_KEY, backlight_state, 2);
 return 0;
}
