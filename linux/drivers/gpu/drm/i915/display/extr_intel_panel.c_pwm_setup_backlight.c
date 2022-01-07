
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max; scalar_t__ level; int enabled; int * pwm; scalar_t__ min; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_device {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CRC_PMIC_PWM_PERIOD_NS ;
 scalar_t__ DIV_ROUND_UP (int,int ) ;
 int DRM_ERROR (char*) ;
 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int pwm_apply_args (int *) ;
 int pwm_config (int *,int ,int ) ;
 int * pwm_get (int ,char*) ;
 int pwm_get_duty_cycle (int *) ;
 int pwm_put (int *) ;

__attribute__((used)) static int pwm_setup_backlight(struct intel_connector *connector,
          enum pipe pipe)
{
 struct drm_device *dev = connector->base.dev;
 struct intel_panel *panel = &connector->panel;
 int retval;


 panel->backlight.pwm = pwm_get(dev->dev, "pwm_backlight");
 if (IS_ERR(panel->backlight.pwm)) {
  DRM_ERROR("Failed to own the pwm chip\n");
  panel->backlight.pwm = ((void*)0);
  return -ENODEV;
 }





 pwm_apply_args(panel->backlight.pwm);

 retval = pwm_config(panel->backlight.pwm, CRC_PMIC_PWM_PERIOD_NS,
       CRC_PMIC_PWM_PERIOD_NS);
 if (retval < 0) {
  DRM_ERROR("Failed to configure the pwm chip\n");
  pwm_put(panel->backlight.pwm);
  panel->backlight.pwm = ((void*)0);
  return retval;
 }

 panel->backlight.min = 0;
 panel->backlight.max = 100;
 panel->backlight.level = DIV_ROUND_UP(
     pwm_get_duty_cycle(panel->backlight.pwm) * 100,
     CRC_PMIC_PWM_PERIOD_NS);
 panel->backlight.enabled = panel->backlight.level != 0;

 return 0;
}
