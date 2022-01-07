
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86_model; } ;






 TYPE_1__ boot_cpu_data ;
 int bxt_idle_state_table_update () ;
 int ivt_idle_state_table_update () ;
 int sklh_idle_state_table_update () ;

__attribute__((used)) static void intel_idle_state_table_update(void)
{
 switch (boot_cpu_data.x86_model) {

 case 129:
  ivt_idle_state_table_update();
  break;
 case 131:
 case 130:
  bxt_idle_state_table_update();
  break;
 case 128:
  sklh_idle_state_table_update();
  break;
 }
}
