
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int urb_ctrl; int urb_in; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void ims_pcu_stop_io(struct ims_pcu *pcu)
{
 usb_kill_urb(pcu->urb_in);
 usb_kill_urb(pcu->urb_ctrl);
}
