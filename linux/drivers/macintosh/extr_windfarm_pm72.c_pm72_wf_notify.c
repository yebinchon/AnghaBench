
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int have_all_controls ;
 int have_all_sensors ;
 int pm72_new_control (void*) ;
 int pm72_new_sensor (void*) ;
 int pm72_tick () ;

__attribute__((used)) static int pm72_wf_notify(struct notifier_block *self,
     unsigned long event, void *data)
{
 switch (event) {
 case 129:
  pm72_new_sensor(data);
  break;
 case 130:
  pm72_new_control(data);
  break;
 case 128:
  if (have_all_controls && have_all_sensors)
   pm72_tick();
 }
 return 0;
}
