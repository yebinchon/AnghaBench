
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usbtouch_usb {int is_open; TYPE_3__* interface; int pm_mutex; TYPE_2__* irq; TYPE_1__* type; } ;
struct input_dev {int dummy; } ;
struct TYPE_8__ {int needs_remote_wakeup; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int irq_always; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct usbtouch_usb* input_get_drvdata (struct input_dev*) ;
 int interface_to_usbdev (TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usb_autopm_get_interface (TYPE_3__*) ;
 int usb_autopm_put_interface (TYPE_3__*) ;
 scalar_t__ usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int usbtouch_open(struct input_dev *input)
{
 struct usbtouch_usb *usbtouch = input_get_drvdata(input);
 int r;

 usbtouch->irq->dev = interface_to_usbdev(usbtouch->interface);

 r = usb_autopm_get_interface(usbtouch->interface) ? -EIO : 0;
 if (r < 0)
  goto out;

 mutex_lock(&usbtouch->pm_mutex);
 if (!usbtouch->type->irq_always) {
  if (usb_submit_urb(usbtouch->irq, GFP_KERNEL)) {
   r = -EIO;
   goto out_put;
  }
 }

 usbtouch->interface->needs_remote_wakeup = 1;
 usbtouch->is_open = 1;
out_put:
 mutex_unlock(&usbtouch->pm_mutex);
 usb_autopm_put_interface(usbtouch->interface);
out:
 return r;
}
