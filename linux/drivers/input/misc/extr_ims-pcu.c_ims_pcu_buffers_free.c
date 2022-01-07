
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int ctrl_dma; int urb_ctrl_buf; int max_ctrl_size; int udev; int urb_ctrl; int urb_out_buf; int read_dma; int urb_in_buf; int max_out_size; int urb_in; } ;


 int kfree (int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void ims_pcu_buffers_free(struct ims_pcu *pcu)
{
 usb_kill_urb(pcu->urb_in);
 usb_free_urb(pcu->urb_in);

 usb_free_coherent(pcu->udev, pcu->max_out_size,
     pcu->urb_in_buf, pcu->read_dma);

 kfree(pcu->urb_out_buf);

 usb_kill_urb(pcu->urb_ctrl);
 usb_free_urb(pcu->urb_ctrl);

 usb_free_coherent(pcu->udev, pcu->max_ctrl_size,
     pcu->urb_ctrl_buf, pcu->ctrl_dma);
}
