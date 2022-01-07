
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm5974 {int bt_urb; int tp_urb; } ;


 int bcm5974_wellspring_mode (struct bcm5974*,int) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void bcm5974_pause_traffic(struct bcm5974 *dev)
{
 usb_kill_urb(dev->tp_urb);
 usb_kill_urb(dev->bt_urb);
 bcm5974_wellspring_mode(dev, 0);
}
