
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct drm_connector_state {int connector; } ;
struct TYPE_4__ {struct intel_panel panel; } ;


 int CRC_PMIC_PWM_PERIOD_NS ;
 int DIV_ROUND_UP (int,int) ;
 int pwm_config (int ,int,int) ;
 TYPE_2__* to_intel_connector (int ) ;

__attribute__((used)) static void pwm_set_backlight(const struct drm_connector_state *conn_state, u32 level)
{
 struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
 int duty_ns = DIV_ROUND_UP(level * CRC_PMIC_PWM_PERIOD_NS, 100);

 pwm_config(panel->backlight.pwm, duty_ns, CRC_PMIC_PWM_PERIOD_NS);
}
