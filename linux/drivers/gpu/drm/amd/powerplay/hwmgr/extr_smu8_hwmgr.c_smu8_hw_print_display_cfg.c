
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc6_settings {int cpu_pstate_separation_time; int nb_pstate_switch_disable; int cpu_pstate_disable; int cpu_cc6_disable; } ;


 int PP_DBG_LOG (char*,...) ;

__attribute__((used)) static void smu8_hw_print_display_cfg(
 const struct cc6_settings *cc6_settings)
{
 PP_DBG_LOG("New Display Configuration:\n");

 PP_DBG_LOG("   cpu_cc6_disable: %d\n",
   cc6_settings->cpu_cc6_disable);
 PP_DBG_LOG("   cpu_pstate_disable: %d\n",
   cc6_settings->cpu_pstate_disable);
 PP_DBG_LOG("   nb_pstate_switch_disable: %d\n",
   cc6_settings->nb_pstate_switch_disable);
 PP_DBG_LOG("   cpu_pstate_separation_time: %d\n\n",
   cc6_settings->cpu_pstate_separation_time);
}
