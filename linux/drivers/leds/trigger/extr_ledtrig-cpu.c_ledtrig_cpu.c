
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger_cpu {int is_active; int _trig; } ;
typedef enum cpu_led_event { ____Placeholder_cpu_led_event } cpu_led_event ;







 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int LED_FULL ;
 unsigned int LED_OFF ;
 int atomic_add (int,int *) ;
 unsigned int atomic_read (int *) ;
 int cpu_trig ;
 int led_trigger_event (int ,unsigned int) ;
 int num_active_cpus ;
 unsigned int num_present_cpus () ;
 struct led_trigger_cpu* this_cpu_ptr (int *) ;
 int trig_cpu_all ;

void ledtrig_cpu(enum cpu_led_event ledevt)
{
 struct led_trigger_cpu *trig = this_cpu_ptr(&cpu_trig);
 bool is_active = trig->is_active;


 switch (ledevt) {
 case 131:
 case 129:

  is_active = 1;
  break;

 case 130:
 case 128:
 case 132:

  is_active = 0;
  break;

 default:

  break;
 }

 if (is_active != trig->is_active) {
  unsigned int active_cpus;
  unsigned int total_cpus;


  trig->is_active = is_active;
  atomic_add(is_active ? 1 : -1, &num_active_cpus);
  active_cpus = atomic_read(&num_active_cpus);
  total_cpus = num_present_cpus();

  led_trigger_event(trig->_trig,
   is_active ? LED_FULL : LED_OFF);


  led_trigger_event(trig_cpu_all,
   DIV_ROUND_UP(LED_FULL * active_cpus, total_cpus));

 }
}
