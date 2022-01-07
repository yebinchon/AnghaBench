
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int have_all_controls ;
 int have_all_sensors ;
 int rm31_new_control (void*) ;
 int rm31_new_sensor (void*) ;
 int rm31_tick () ;

__attribute__((used)) static int rm31_wf_notify(struct notifier_block *self,
     unsigned long event, void *data)
{
 switch (event) {
 case 129:
  rm31_new_sensor(data);
  break;
 case 130:
  rm31_new_control(data);
  break;
 case 128:
  if (have_all_controls && have_all_sensors)
   rm31_tick();
 }
 return 0;
}
