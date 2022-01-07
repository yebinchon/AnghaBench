
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uinput_device {size_t head; size_t tail; TYPE_1__* dev; struct input_event* buff; } ;
struct input_event {int dummy; } ;
struct TYPE_2__ {int event_lock; } ;


 int UINPUT_BUFFER_SIZE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool uinput_fetch_next_event(struct uinput_device *udev,
        struct input_event *event)
{
 bool have_event;

 spin_lock_irq(&udev->dev->event_lock);

 have_event = udev->head != udev->tail;
 if (have_event) {
  *event = udev->buff[udev->tail];
  udev->tail = (udev->tail + 1) % UINPUT_BUFFER_SIZE;
 }

 spin_unlock_irq(&udev->dev->event_lock);

 return have_event;
}
