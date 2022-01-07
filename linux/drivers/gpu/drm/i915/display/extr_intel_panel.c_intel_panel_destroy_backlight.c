
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int present; scalar_t__ pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;


 int pwm_put (scalar_t__) ;

__attribute__((used)) static void intel_panel_destroy_backlight(struct intel_panel *panel)
{

 if (panel->backlight.pwm)
  pwm_put(panel->backlight.pwm);

 panel->backlight.present = 0;
}
