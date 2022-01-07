
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct synusb {int flags; int pm_mutex; int urb; scalar_t__ is_open; } ;


 int EIO ;
 int GFP_NOIO ;
 int SYNUSB_IO_ALWAYS ;
 int mutex_unlock (int *) ;
 struct synusb* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int synusb_post_reset(struct usb_interface *intf)
{
 struct synusb *synusb = usb_get_intfdata(intf);
 int retval = 0;

 if ((synusb->is_open || (synusb->flags & SYNUSB_IO_ALWAYS)) &&
     usb_submit_urb(synusb->urb, GFP_NOIO) < 0) {
  retval = -EIO;
 }

 mutex_unlock(&synusb->pm_mutex);

 return retval;
}
