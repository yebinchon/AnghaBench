
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pegasus {int pm_mutex; int irq; scalar_t__ is_open; } ;


 int EIO ;
 int GFP_NOIO ;
 int NOTETAKER_LED_MOUSE ;
 int PEN_MODE_XY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pegasus_set_mode (struct pegasus*,int ,int ) ;
 struct pegasus* usb_get_intfdata (struct usb_interface*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int pegasus_reset_resume(struct usb_interface *intf)
{
 struct pegasus *pegasus = usb_get_intfdata(intf);
 int retval = 0;

 mutex_lock(&pegasus->pm_mutex);
 if (pegasus->is_open) {
  retval = pegasus_set_mode(pegasus, PEN_MODE_XY,
       NOTETAKER_LED_MOUSE);
  if (!retval && usb_submit_urb(pegasus->irq, GFP_NOIO) < 0)
   retval = -EIO;
 }
 mutex_unlock(&pegasus->pm_mutex);

 return retval;
}
