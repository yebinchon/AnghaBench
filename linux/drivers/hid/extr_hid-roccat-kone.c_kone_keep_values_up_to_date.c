
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kone_mouse_event {int event; int value; } ;
struct kone_device {int actual_dpi; int actual_profile; TYPE_1__* profiles; } ;
struct TYPE_2__ {int startup_dpi; } ;







__attribute__((used)) static void kone_keep_values_up_to_date(struct kone_device *kone,
  struct kone_mouse_event const *event)
{
 switch (event->event) {
 case 128:
  kone->actual_dpi = kone->profiles[event->value - 1].
    startup_dpi;

 case 130:
  kone->actual_profile = event->value;
  break;
 case 129:
 case 131:
  kone->actual_dpi = event->value;
  break;
 }
}
