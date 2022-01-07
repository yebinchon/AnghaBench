
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int urb_ctrl; int dev; int urb_in; } ;


 int EIO ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 int usb_kill_urb (int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int ims_pcu_start_io(struct ims_pcu *pcu)
{
 int error;

 error = usb_submit_urb(pcu->urb_ctrl, GFP_KERNEL);
 if (error) {
  dev_err(pcu->dev,
   "Failed to start control IO - usb_submit_urb failed with result: %d\n",
   error);
  return -EIO;
 }

 error = usb_submit_urb(pcu->urb_in, GFP_KERNEL);
 if (error) {
  dev_err(pcu->dev,
   "Failed to start IO - usb_submit_urb failed with result: %d\n",
   error);
  usb_kill_urb(pcu->urb_ctrl);
  return -EIO;
 }

 return 0;
}
