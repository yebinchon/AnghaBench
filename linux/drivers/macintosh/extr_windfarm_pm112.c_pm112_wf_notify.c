
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int have_all_controls ;
 int have_all_sensors ;
 int pm112_new_control (void*) ;
 int pm112_new_sensor (void*) ;
 int pm112_tick () ;

__attribute__((used)) static int pm112_wf_notify(struct notifier_block *self,
      unsigned long event, void *data)
{
 switch (event) {
 case 129:
  pm112_new_sensor(data);
  break;
 case 130:
  pm112_new_control(data);
  break;
 case 128:
  if (have_all_controls && have_all_sensors)
   pm112_tick();
 }
 return 0;
}
