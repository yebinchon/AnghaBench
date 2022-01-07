
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;


 int CRC_PMIC_PWM_PERIOD_NS ;
 int DIV_ROUND_UP (int,int ) ;
 int pwm_get_duty_cycle (int ) ;

__attribute__((used)) static u32 pwm_get_backlight(struct intel_connector *connector)
{
 struct intel_panel *panel = &connector->panel;
 int duty_ns;

 duty_ns = pwm_get_duty_cycle(panel->backlight.pwm);
 return DIV_ROUND_UP(duty_ns * 100, CRC_PMIC_PWM_PERIOD_NS);
}
