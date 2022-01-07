
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct es2_ap_dev {int* cport_out_urb_busy; TYPE_1__* usb_dev; int cport_out_urb_lock; struct urb** cport_out_urb; int * cport_out_urb_cancelled; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int NUM_CPORT_OUT_URB ;
 int dev_dbg (int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct urb* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static struct urb *next_free_urb(struct es2_ap_dev *es2, gfp_t gfp_mask)
{
 struct urb *urb = ((void*)0);
 unsigned long flags;
 int i;

 spin_lock_irqsave(&es2->cport_out_urb_lock, flags);


 for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
  if (!es2->cport_out_urb_busy[i] &&
      !es2->cport_out_urb_cancelled[i]) {
   es2->cport_out_urb_busy[i] = 1;
   urb = es2->cport_out_urb[i];
   break;
  }
 }
 spin_unlock_irqrestore(&es2->cport_out_urb_lock, flags);
 if (urb)
  return urb;





 dev_dbg(&es2->usb_dev->dev,
  "No free CPort OUT urbs, having to dynamically allocate one!\n");
 return usb_alloc_urb(0, gfp_mask);
}
