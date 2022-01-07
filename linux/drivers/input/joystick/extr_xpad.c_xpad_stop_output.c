
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xpad {scalar_t__ xtype; int irq_out_anchor; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ XTYPE_UNKNOWN ;
 int dev_warn (int *,char*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_wait_anchor_empty_timeout (int *,int) ;

__attribute__((used)) static void xpad_stop_output(struct usb_xpad *xpad)
{
 if (xpad->xtype != XTYPE_UNKNOWN) {
  if (!usb_wait_anchor_empty_timeout(&xpad->irq_out_anchor,
         5000)) {
   dev_warn(&xpad->intf->dev,
     "timed out waiting for output URB to complete, killing\n");
   usb_kill_anchored_urbs(&xpad->irq_out_anchor);
  }
 }
}
