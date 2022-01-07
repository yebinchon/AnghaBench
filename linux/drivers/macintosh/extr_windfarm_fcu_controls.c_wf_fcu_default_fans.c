
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_fcu_priv {int dummy; } ;


 int FCU_FAN_PWM ;
 int FCU_FAN_RPM ;
 int of_machine_is_compatible (char*) ;
 int wf_fcu_add_fan (struct wf_fcu_priv*,char*,int ,int) ;

__attribute__((used)) static void wf_fcu_default_fans(struct wf_fcu_priv *pv)
{

 if (!of_machine_is_compatible("PowerMac7,2"))
  return;

 wf_fcu_add_fan(pv, "backside-fan", FCU_FAN_PWM, 1);
 wf_fcu_add_fan(pv, "drive-bay-fan", FCU_FAN_RPM, 2);
 wf_fcu_add_fan(pv, "slots-fan", FCU_FAN_PWM, 2);
 wf_fcu_add_fan(pv, "cpu-front-fan-0", FCU_FAN_RPM, 3);
 wf_fcu_add_fan(pv, "cpu-rear-fan-0", FCU_FAN_RPM, 4);
 wf_fcu_add_fan(pv, "cpu-front-fan-1", FCU_FAN_RPM, 5);
 wf_fcu_add_fan(pv, "cpu-rear-fan-1", FCU_FAN_RPM, 6);
}
