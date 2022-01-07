
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm5974 {scalar_t__ bt_urb; scalar_t__ tp_urb; } ;


 int GFP_KERNEL ;
 int bcm5974_wellspring_mode (struct bcm5974*,int) ;
 int dprintk (int,char*) ;
 int usb_kill_urb (scalar_t__) ;
 int usb_submit_urb (scalar_t__,int ) ;

__attribute__((used)) static int bcm5974_start_traffic(struct bcm5974 *dev)
{
 int error;

 error = bcm5974_wellspring_mode(dev, 1);
 if (error) {
  dprintk(1, "bcm5974: mode switch failed\n");
  goto err_out;
 }

 if (dev->bt_urb) {
  error = usb_submit_urb(dev->bt_urb, GFP_KERNEL);
  if (error)
   goto err_reset_mode;
 }

 error = usb_submit_urb(dev->tp_urb, GFP_KERNEL);
 if (error)
  goto err_kill_bt;

 return 0;

err_kill_bt:
 usb_kill_urb(dev->bt_urb);
err_reset_mode:
 bcm5974_wellspring_mode(dev, 0);
err_out:
 return error;
}
