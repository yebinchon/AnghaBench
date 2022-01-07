
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_fcu_priv {int ref; int fan_list; } ;
struct TYPE_2__ {char const* name; int * ops; int type; struct wf_fcu_fan* priv; } ;
struct wf_fcu_fan {int id; int min; int max; int link; TYPE_1__ ctrl; struct wf_fcu_priv* fcu_priv; } ;


 int FCU_FAN_RPM ;
 int GFP_KERNEL ;
 int WF_CONTROL_PWM_FAN ;
 int WF_CONTROL_RPM_FAN ;
 int kfree (struct wf_fcu_fan*) ;
 int kref_get (int *) ;
 struct wf_fcu_fan* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_err (char*,char const*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;
 int wf_fcu_fan_pwm_ops ;
 int wf_fcu_fan_rpm_ops ;
 int wf_fcu_get_pump_minmax (struct wf_fcu_fan*) ;
 int wf_fcu_get_rpmfan_minmax (struct wf_fcu_fan*) ;
 scalar_t__ wf_register_control (TYPE_1__*) ;

__attribute__((used)) static void wf_fcu_add_fan(struct wf_fcu_priv *pv, const char *name,
      int type, int id)
{
 struct wf_fcu_fan *fan;

 fan = kzalloc(sizeof(*fan), GFP_KERNEL);
 if (!fan)
  return;
 fan->fcu_priv = pv;
 fan->id = id;
 fan->ctrl.name = name;
 fan->ctrl.priv = fan;




 if (type == FCU_FAN_RPM) {
  if (!strncmp(name, "cpu-pump", strlen("cpu-pump")))
   wf_fcu_get_pump_minmax(fan);
  else
   wf_fcu_get_rpmfan_minmax(fan);
  fan->ctrl.type = WF_CONTROL_RPM_FAN;
  fan->ctrl.ops = &wf_fcu_fan_rpm_ops;
 } else {
  fan->min = 10;
  fan->max = 100;
  fan->ctrl.type = WF_CONTROL_PWM_FAN;
  fan->ctrl.ops = &wf_fcu_fan_pwm_ops;
 }

 if (wf_register_control(&fan->ctrl)) {
  pr_err("wf_fcu: Failed to register fan %s\n", name);
  kfree(fan);
  return;
 }
 list_add(&fan->link, &pv->fan_list);
 kref_get(&pv->ref);
}
