
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int heartbeat_led_trigger ;
 int led_trigger_unregister (int *) ;

__attribute__((used)) static int heartbeat_reboot_notifier(struct notifier_block *nb,
         unsigned long code, void *unused)
{
 led_trigger_unregister(&heartbeat_led_trigger);
 return NOTIFY_DONE;
}
