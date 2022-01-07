
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbtouch_usb {int is_open; TYPE_2__* interface; int pm_mutex; int irq; TYPE_1__* type; } ;
struct input_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ needs_remote_wakeup; } ;
struct TYPE_4__ {int irq_always; } ;


 struct usbtouch_usb* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (TYPE_2__*) ;
 int usb_autopm_put_interface (TYPE_2__*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usbtouch_close(struct input_dev *input)
{
 struct usbtouch_usb *usbtouch = input_get_drvdata(input);
 int r;

 mutex_lock(&usbtouch->pm_mutex);
 if (!usbtouch->type->irq_always)
  usb_kill_urb(usbtouch->irq);
 usbtouch->is_open = 0;
 mutex_unlock(&usbtouch->pm_mutex);

 r = usb_autopm_get_interface(usbtouch->interface);
 usbtouch->interface->needs_remote_wakeup = 0;
 if (!r)
  usb_autopm_put_interface(usbtouch->interface);
}
