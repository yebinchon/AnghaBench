
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ alternate_pwm_increment; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int MHz (int) ;

__attribute__((used)) static u32 spt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
{
 struct intel_panel *panel = &connector->panel;
 u32 mul;

 if (panel->backlight.alternate_pwm_increment)
  mul = 128;
 else
  mul = 16;

 return DIV_ROUND_CLOSEST(MHz(24), pwm_freq_hz * mul);
}
