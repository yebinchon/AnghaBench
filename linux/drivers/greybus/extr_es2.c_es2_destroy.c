
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int ** buffer; struct urb** urb; } ;
struct es2_ap_dev {int* cport_out_urb_busy; int hd; struct usb_device* usb_dev; TYPE_1__ cport_in; int ** arpc_buffer; struct urb** arpc_urb; struct urb** cport_out_urb; int apb_log_enable_dentry; } ;


 int ES2_CPORT_CDSI0 ;
 int ES2_CPORT_CDSI1 ;
 int NUM_ARPC_IN_URB ;
 int NUM_CPORT_IN_URB ;
 int NUM_CPORT_OUT_URB ;
 int debugfs_remove (int ) ;
 int gb_hd_cport_release_reserved (int ,int ) ;
 int gb_hd_put (int ) ;
 int kfree (int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_log_disable (struct es2_ap_dev*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void es2_destroy(struct es2_ap_dev *es2)
{
 struct usb_device *udev;
 struct urb *urb;
 int i;

 debugfs_remove(es2->apb_log_enable_dentry);
 usb_log_disable(es2);


 for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
  urb = es2->cport_out_urb[i];
  usb_kill_urb(urb);
  usb_free_urb(urb);
  es2->cport_out_urb[i] = ((void*)0);
  es2->cport_out_urb_busy[i] = 0;
 }

 for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
  usb_free_urb(es2->arpc_urb[i]);
  kfree(es2->arpc_buffer[i]);
  es2->arpc_buffer[i] = ((void*)0);
 }

 for (i = 0; i < NUM_CPORT_IN_URB; ++i) {
  usb_free_urb(es2->cport_in.urb[i]);
  kfree(es2->cport_in.buffer[i]);
  es2->cport_in.buffer[i] = ((void*)0);
 }


 gb_hd_cport_release_reserved(es2->hd, ES2_CPORT_CDSI1);
 gb_hd_cport_release_reserved(es2->hd, ES2_CPORT_CDSI0);

 udev = es2->usb_dev;
 gb_hd_put(es2->hd);

 usb_put_dev(udev);
}
