
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int name; } ;
struct wf_control {int name; } ;
struct notifier_block {int dummy; } ;





 int pm121_all_controls_ok ;
 int pm121_all_sensors_ok ;
 int pm121_new_control (void*) ;
 int pm121_new_sensor (void*) ;
 int pm121_tick () ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int pm121_notify(struct notifier_block *self,
   unsigned long event, void *data)
{
 switch (event) {
 case 130:
  pr_debug("pm121: new control %s detected\n",
    ((struct wf_control *)data)->name);
  pm121_new_control(data);
  break;
 case 129:
  pr_debug("pm121: new sensor %s detected\n",
    ((struct wf_sensor *)data)->name);
  pm121_new_sensor(data);
  break;
 case 128:
  if (pm121_all_controls_ok && pm121_all_sensors_ok)
   pm121_tick();
  break;
 }

 return 0;
}
