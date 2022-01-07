
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct es2_ap_dev {struct urb** arpc_urb; TYPE_1__* usb_dev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int NUM_ARPC_IN_URB ;
 int dev_err (int *,char*,int) ;
 int usb_kill_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int es2_arpc_in_enable(struct es2_ap_dev *es2)
{
 struct urb *urb;
 int ret;
 int i;

 for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
  urb = es2->arpc_urb[i];

  ret = usb_submit_urb(urb, GFP_KERNEL);
  if (ret) {
   dev_err(&es2->usb_dev->dev,
    "failed to submit arpc in-urb: %d\n", ret);
   goto err_kill_urbs;
  }
 }

 return 0;

err_kill_urbs:
 for (--i; i >= 0; --i) {
  urb = es2->arpc_urb[i];
  usb_kill_urb(urb);
 }

 return ret;
}
