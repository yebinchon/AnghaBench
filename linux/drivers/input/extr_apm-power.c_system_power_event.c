
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APM_USER_SUSPEND ;

 int apm_queue_event (int ) ;
 int pr_info (char*) ;

__attribute__((used)) static void system_power_event(unsigned int keycode)
{
 switch (keycode) {
 case 128:
  apm_queue_event(APM_USER_SUSPEND);
  pr_info("Requesting system suspend...\n");
  break;
 default:
  break;
 }
}
