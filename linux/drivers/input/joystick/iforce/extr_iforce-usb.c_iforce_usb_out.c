
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct iforce_usb* context; } ;
struct iforce {int wait; int xmit_flags; } ;
struct iforce_usb {TYPE_1__* intf; struct iforce iforce; } ;
struct TYPE_2__ {int dev; } ;


 int IFORCE_XMIT_RUNNING ;
 int __iforce_usb_xmit (struct iforce*) ;
 int clear_bit (int ,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void iforce_usb_out(struct urb *urb)
{
 struct iforce_usb *iforce_usb = urb->context;
 struct iforce *iforce = &iforce_usb->iforce;

 if (urb->status) {
  clear_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
  dev_dbg(&iforce_usb->intf->dev, "urb->status %d, exiting\n",
   urb->status);
  return;
 }

 __iforce_usb_xmit(iforce);

 wake_up(&iforce->wait);
}
