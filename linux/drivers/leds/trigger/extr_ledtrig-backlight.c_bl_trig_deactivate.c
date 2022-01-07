
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct bl_trig_notifier {int notifier; } ;


 int fb_unregister_client (int *) ;
 int kfree (struct bl_trig_notifier*) ;
 struct bl_trig_notifier* led_get_trigger_data (struct led_classdev*) ;

__attribute__((used)) static void bl_trig_deactivate(struct led_classdev *led)
{
 struct bl_trig_notifier *n = led_get_trigger_data(led);

 fb_unregister_client(&n->notifier);
 kfree(n);
}
