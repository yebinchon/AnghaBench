
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pxrc {int pm_mutex; int urb; scalar_t__ is_open; } ;


 int EIO ;
 int GFP_KERNEL ;
 int mutex_unlock (int *) ;
 struct pxrc* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int pxrc_post_reset(struct usb_interface *intf)
{
 struct pxrc *pxrc = usb_get_intfdata(intf);
 int retval = 0;

 if (pxrc->is_open && usb_submit_urb(pxrc->urb, GFP_KERNEL) < 0)
  retval = -EIO;

 mutex_unlock(&pxrc->pm_mutex);

 return retval;
}
