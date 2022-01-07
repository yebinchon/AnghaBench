
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {void* bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct urb {int dummy; } ;
struct TYPE_6__ {int ** buffer; void* endpoint; struct urb** urb; } ;
struct gb_host_device {int* cport_out_urb_busy; TYPE_3__ cport_in; int arpc_lock; int arpcs; int apb_log_enable_dentry; struct urb** cport_out_urb; int ** arpc_buffer; void* arpc_endpoint_in; struct urb** arpc_urb; void* cport_out_endpoint; int apb_log_fifo; int cport_out_urb_lock; struct usb_device* usb_dev; struct usb_interface* usb_intf; struct gb_host_device* hd; } ;
struct es2_ap_dev {int* cport_out_urb_busy; TYPE_3__ cport_in; int arpc_lock; int arpcs; int apb_log_enable_dentry; struct urb** cport_out_urb; int ** arpc_buffer; void* arpc_endpoint_in; struct urb** arpc_urb; void* cport_out_endpoint; int apb_log_fifo; int cport_out_urb_lock; struct usb_device* usb_dev; struct usb_interface* usb_intf; struct es2_ap_dev* hd; } ;
typedef void* __u8 ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ARPC_IN_SIZE_MAX ;
 int ENODEV ;
 int ENOMEM ;
 int ES2_CPORT_CDSI0 ;
 int ES2_CPORT_CDSI1 ;
 int ES2_GBUF_MSG_SIZE_MAX ;
 int GFP_KERNEL ;
 int INIT_KFIFO (int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct gb_host_device*) ;
 int NUM_ARPC_IN_URB ;
 int NUM_CPORT_IN_URB ;
 int NUM_CPORT_OUT_URB ;
 int PTR_ERR (struct gb_host_device*) ;
 int apb_get_cport_count (struct usb_device*) ;
 int apb_log_enable_fops ;
 int arpc_in_callback ;
 int cport_in_callback ;
 int debugfs_create_file (char*,int,int ,struct gb_host_device*,int *) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,void*) ;
 int es2_arpc_in_disable (struct gb_host_device*) ;
 int es2_arpc_in_enable (struct gb_host_device*) ;
 int es2_cport_in_enable (struct gb_host_device*,TYPE_3__*) ;
 int es2_destroy (struct gb_host_device*) ;
 int es2_driver ;
 int gb_debugfs_get () ;
 int gb_hd_add (struct gb_host_device*) ;
 int gb_hd_cport_reserve (struct gb_host_device*,int ) ;
 struct gb_host_device* gb_hd_create (int *,int *,int ,int) ;
 int gb_hd_del (struct gb_host_device*) ;
 struct gb_host_device* hd_to_es2 (struct gb_host_device*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int * kmalloc (int ,int ) ;
 int spin_lock_init (int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,int *,int ,int ,struct gb_host_device*) ;
 struct usb_device* usb_get_dev (int ) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_rcvbulkpipe (struct usb_device*,void*) ;
 int usb_set_intfdata (struct usb_interface*,struct gb_host_device*) ;

__attribute__((used)) static int ap_probe(struct usb_interface *interface,
      const struct usb_device_id *id)
{
 struct es2_ap_dev *es2;
 struct gb_host_device *hd;
 struct usb_device *udev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 __u8 ep_addr;
 int retval;
 int i;
 int num_cports;
 bool bulk_out_found = 0;
 bool bulk_in_found = 0;
 bool arpc_in_found = 0;

 udev = usb_get_dev(interface_to_usbdev(interface));

 num_cports = apb_get_cport_count(udev);
 if (num_cports < 0) {
  usb_put_dev(udev);
  dev_err(&udev->dev, "Cannot retrieve CPort count: %d\n",
   num_cports);
  return num_cports;
 }

 hd = gb_hd_create(&es2_driver, &udev->dev, ES2_GBUF_MSG_SIZE_MAX,
     num_cports);
 if (IS_ERR(hd)) {
  usb_put_dev(udev);
  return PTR_ERR(hd);
 }

 es2 = hd_to_es2(hd);
 es2->hd = hd;
 es2->usb_intf = interface;
 es2->usb_dev = udev;
 spin_lock_init(&es2->cport_out_urb_lock);
 INIT_KFIFO(es2->apb_log_fifo);
 usb_set_intfdata(interface, es2);





 retval = gb_hd_cport_reserve(hd, ES2_CPORT_CDSI0);
 if (retval)
  goto error;
 retval = gb_hd_cport_reserve(hd, ES2_CPORT_CDSI1);
 if (retval)
  goto error;


 iface_desc = interface->cur_altsetting;
 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;
  ep_addr = endpoint->bEndpointAddress;

  if (usb_endpoint_is_bulk_in(endpoint)) {
   if (!bulk_in_found) {
    es2->cport_in.endpoint = ep_addr;
    bulk_in_found = 1;
   } else if (!arpc_in_found) {
    es2->arpc_endpoint_in = ep_addr;
    arpc_in_found = 1;
   } else {
    dev_warn(&udev->dev,
      "Unused bulk IN endpoint found: 0x%02x\n",
      ep_addr);
   }
   continue;
  }
  if (usb_endpoint_is_bulk_out(endpoint)) {
   if (!bulk_out_found) {
    es2->cport_out_endpoint = ep_addr;
    bulk_out_found = 1;
   } else {
    dev_warn(&udev->dev,
      "Unused bulk OUT endpoint found: 0x%02x\n",
      ep_addr);
   }
   continue;
  }
  dev_warn(&udev->dev,
    "Unknown endpoint type found, address 0x%02x\n",
    ep_addr);
 }
 if (!bulk_in_found || !arpc_in_found || !bulk_out_found) {
  dev_err(&udev->dev, "Not enough endpoints found in device, aborting!\n");
  retval = -ENODEV;
  goto error;
 }


 for (i = 0; i < NUM_CPORT_IN_URB; ++i) {
  struct urb *urb;
  u8 *buffer;

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   retval = -ENOMEM;
   goto error;
  }
  es2->cport_in.urb[i] = urb;

  buffer = kmalloc(ES2_GBUF_MSG_SIZE_MAX, GFP_KERNEL);
  if (!buffer) {
   retval = -ENOMEM;
   goto error;
  }

  usb_fill_bulk_urb(urb, udev,
      usb_rcvbulkpipe(udev, es2->cport_in.endpoint),
      buffer, ES2_GBUF_MSG_SIZE_MAX,
      cport_in_callback, hd);

  es2->cport_in.buffer[i] = buffer;
 }


 for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
  struct urb *urb;
  u8 *buffer;

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   retval = -ENOMEM;
   goto error;
  }
  es2->arpc_urb[i] = urb;

  buffer = kmalloc(ARPC_IN_SIZE_MAX, GFP_KERNEL);
  if (!buffer) {
   retval = -ENOMEM;
   goto error;
  }

  usb_fill_bulk_urb(urb, udev,
      usb_rcvbulkpipe(udev,
        es2->arpc_endpoint_in),
      buffer, ARPC_IN_SIZE_MAX,
      arpc_in_callback, es2);

  es2->arpc_buffer[i] = buffer;
 }


 for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
  struct urb *urb;

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   retval = -ENOMEM;
   goto error;
  }

  es2->cport_out_urb[i] = urb;
  es2->cport_out_urb_busy[i] = 0;
 }


 es2->apb_log_enable_dentry = debugfs_create_file("apb_log_enable",
        0644,
        gb_debugfs_get(), es2,
        &apb_log_enable_fops);

 INIT_LIST_HEAD(&es2->arpcs);
 spin_lock_init(&es2->arpc_lock);

 retval = es2_arpc_in_enable(es2);
 if (retval)
  goto error;

 retval = gb_hd_add(hd);
 if (retval)
  goto err_disable_arpc_in;

 retval = es2_cport_in_enable(es2, &es2->cport_in);
 if (retval)
  goto err_hd_del;

 return 0;

err_hd_del:
 gb_hd_del(hd);
err_disable_arpc_in:
 es2_arpc_in_disable(es2);
error:
 es2_destroy(es2);

 return retval;
}
