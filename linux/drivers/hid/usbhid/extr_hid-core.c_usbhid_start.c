
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct usbhid_device {unsigned int bufsize; TYPE_4__* urbctrl; TYPE_4__* urbout; TYPE_4__* urbin; TYPE_7__* intf; int iofl; int ctrlbuf_dma; int ctrlbuf; scalar_t__ cr; int outbuf_dma; int outbuf; int inbuf_dma; int inbuf; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_12__ {unsigned int bNumEndpoints; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; } ;
struct usb_host_interface {TYPE_3__ desc; TYPE_1__* endpoint; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device {scalar_t__ speed; int dev; } ;
struct TYPE_15__ {int parent; } ;
struct hid_device {int quirks; TYPE_9__ dev; TYPE_2__* collection; int name; struct usbhid_device* driver_data; } ;
struct TYPE_14__ {int needs_remote_wakeup; } ;
struct TYPE_13__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_11__ {int usage; } ;
struct TYPE_10__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_DISCONNECTED ;
 int HID_FEATURE_REPORT ;



 int HID_INPUT_REPORT ;
 int HID_IN_POLLING ;
 unsigned int HID_MAX_BUFFER_SIZE ;
 unsigned int HID_MIN_BUFFER_SIZE ;
 int HID_OUTPUT_REPORT ;
 int HID_QUIRK_ALWAYS_POLL ;
 int HID_QUIRK_FULLSPEED_INTERVAL ;
 int HID_STARTED ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ USB_INTERFACE_PROTOCOL_KEYBOARD ;
 scalar_t__ USB_INTERFACE_SUBCLASS_BOOT ;
 scalar_t__ USB_SPEED_HIGH ;
 int clear_bit (int ,int *) ;
 int dev_err (TYPE_9__*,char*,int) ;
 int device_set_wakeup_enable (int *,int) ;
 int fls (int) ;
 scalar_t__ hid_alloc_buffers (struct usb_device*,struct hid_device*) ;
 int hid_ctrl ;
 int hid_find_max_report (struct hid_device*,int ,unsigned int*) ;
 int hid_free_buffers (struct usb_device*,struct hid_device*) ;
 int hid_irq_in ;
 int hid_irq_out ;
 int hid_jspoll_interval ;
 int hid_kbpoll_interval ;
 int hid_mousepoll_interval ;
 int hid_start_in (struct hid_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int pr_info (char*,int ,int,int) ;
 int set_bit (int ,int *) ;
 struct usb_interface* to_usb_interface (int ) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_autopm_get_interface (TYPE_7__*) ;
 int usb_autopm_put_interface (TYPE_7__*) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_xfer_int (struct usb_endpoint_descriptor*) ;
 int usb_fill_control_urb (TYPE_4__*,struct usb_device*,int ,void*,int ,int,int ,struct hid_device*) ;
 int usb_fill_int_urb (TYPE_4__*,struct usb_device*,int,int ,unsigned int,int ,struct hid_device*,int) ;
 int usb_free_urb (TYPE_4__*) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_sndintpipe (struct usb_device*,int ) ;
 int usbhid_set_leds (struct hid_device*) ;

__attribute__((used)) static int usbhid_start(struct hid_device *hid)
{
 struct usb_interface *intf = to_usb_interface(hid->dev.parent);
 struct usb_host_interface *interface = intf->cur_altsetting;
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usbhid_device *usbhid = hid->driver_data;
 unsigned int n, insize = 0;
 int ret;

 clear_bit(HID_DISCONNECTED, &usbhid->iofl);

 usbhid->bufsize = HID_MIN_BUFFER_SIZE;
 hid_find_max_report(hid, HID_INPUT_REPORT, &usbhid->bufsize);
 hid_find_max_report(hid, HID_OUTPUT_REPORT, &usbhid->bufsize);
 hid_find_max_report(hid, HID_FEATURE_REPORT, &usbhid->bufsize);

 if (usbhid->bufsize > HID_MAX_BUFFER_SIZE)
  usbhid->bufsize = HID_MAX_BUFFER_SIZE;

 hid_find_max_report(hid, HID_INPUT_REPORT, &insize);

 if (insize > HID_MAX_BUFFER_SIZE)
  insize = HID_MAX_BUFFER_SIZE;

 if (hid_alloc_buffers(dev, hid)) {
  ret = -ENOMEM;
  goto fail;
 }

 for (n = 0; n < interface->desc.bNumEndpoints; n++) {
  struct usb_endpoint_descriptor *endpoint;
  int pipe;
  int interval;

  endpoint = &interface->endpoint[n].desc;
  if (!usb_endpoint_xfer_int(endpoint))
   continue;

  interval = endpoint->bInterval;


  if (hid->quirks & HID_QUIRK_FULLSPEED_INTERVAL &&
      dev->speed == USB_SPEED_HIGH) {
   interval = fls(endpoint->bInterval*8);
   pr_info("%s: Fixing fullspeed to highspeed interval: %d -> %d\n",
    hid->name, endpoint->bInterval, interval);
  }




  switch (hid->collection->usage) {
  case 128:
   if (hid_mousepoll_interval > 0)
    interval = hid_mousepoll_interval;
   break;
  case 130:
   if (hid_jspoll_interval > 0)
    interval = hid_jspoll_interval;
   break;
  case 129:
   if (hid_kbpoll_interval > 0)
    interval = hid_kbpoll_interval;
   break;
  }

  ret = -ENOMEM;
  if (usb_endpoint_dir_in(endpoint)) {
   if (usbhid->urbin)
    continue;
   if (!(usbhid->urbin = usb_alloc_urb(0, GFP_KERNEL)))
    goto fail;
   pipe = usb_rcvintpipe(dev, endpoint->bEndpointAddress);
   usb_fill_int_urb(usbhid->urbin, dev, pipe, usbhid->inbuf, insize,
      hid_irq_in, hid, interval);
   usbhid->urbin->transfer_dma = usbhid->inbuf_dma;
   usbhid->urbin->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  } else {
   if (usbhid->urbout)
    continue;
   if (!(usbhid->urbout = usb_alloc_urb(0, GFP_KERNEL)))
    goto fail;
   pipe = usb_sndintpipe(dev, endpoint->bEndpointAddress);
   usb_fill_int_urb(usbhid->urbout, dev, pipe, usbhid->outbuf, 0,
      hid_irq_out, hid, interval);
   usbhid->urbout->transfer_dma = usbhid->outbuf_dma;
   usbhid->urbout->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  }
 }

 usbhid->urbctrl = usb_alloc_urb(0, GFP_KERNEL);
 if (!usbhid->urbctrl) {
  ret = -ENOMEM;
  goto fail;
 }

 usb_fill_control_urb(usbhid->urbctrl, dev, 0, (void *) usbhid->cr,
        usbhid->ctrlbuf, 1, hid_ctrl, hid);
 usbhid->urbctrl->transfer_dma = usbhid->ctrlbuf_dma;
 usbhid->urbctrl->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 set_bit(HID_STARTED, &usbhid->iofl);

 if (hid->quirks & HID_QUIRK_ALWAYS_POLL) {
  ret = usb_autopm_get_interface(usbhid->intf);
  if (ret)
   goto fail;
  set_bit(HID_IN_POLLING, &usbhid->iofl);
  usbhid->intf->needs_remote_wakeup = 1;
  ret = hid_start_in(hid);
  if (ret) {
   dev_err(&hid->dev,
    "failed to start in urb: %d\n", ret);
  }
  usb_autopm_put_interface(usbhid->intf);
 }







 if (interface->desc.bInterfaceSubClass == USB_INTERFACE_SUBCLASS_BOOT &&
   interface->desc.bInterfaceProtocol ==
    USB_INTERFACE_PROTOCOL_KEYBOARD) {
  usbhid_set_leds(hid);
  device_set_wakeup_enable(&dev->dev, 1);
 }
 return 0;

fail:
 usb_free_urb(usbhid->urbin);
 usb_free_urb(usbhid->urbout);
 usb_free_urb(usbhid->urbctrl);
 usbhid->urbin = ((void*)0);
 usbhid->urbout = ((void*)0);
 usbhid->urbctrl = ((void*)0);
 hid_free_buffers(dev, hid);
 return ret;
}
