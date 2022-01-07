
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_xpad {scalar_t__ xtype; int idata_dma; int idata; TYPE_6__* irq_in; int mapping; int work; int name; struct usb_interface* intf; struct usb_device* udev; int phys; } ;
struct usb_interface {TYPE_4__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int idProduct; int idVendor; } ;
struct usb_device {int quirks; TYPE_1__ descriptor; } ;
struct TYPE_14__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_13__ {scalar_t__ idVendor; scalar_t__ idProduct; scalar_t__ xtype; int name; int mapping; } ;
struct TYPE_10__ {int bNumEndpoints; scalar_t__ bInterfaceClass; int bInterfaceProtocol; scalar_t__ bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct TYPE_11__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MAP_DPAD_TO_BUTTONS ;
 int MAP_STICKS_TO_NULL ;
 int MAP_TRIGGERS_TO_BUTTONS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int USB_QUIRK_RESET_RESUME ;
 int XPAD_PKT_LEN ;
 scalar_t__ XTYPE_UNKNOWN ;
 scalar_t__ XTYPE_XBOX ;
 scalar_t__ XTYPE_XBOX360 ;
 scalar_t__ XTYPE_XBOX360W ;
 scalar_t__ XTYPE_XBOXONE ;
 scalar_t__ dpad_to_buttons ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_xpad*) ;
 struct usb_xpad* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ sticks_to_null ;
 int strlcat (int ,char*,int) ;
 scalar_t__ triggers_to_buttons ;
 int usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 TYPE_6__* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (TYPE_6__*,struct usb_device*,int ,int ,int ,int ,struct usb_xpad*,int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (TYPE_6__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_xpad*) ;
 int xpad360w_start_input (struct usb_xpad*) ;
 int xpad_deinit_output (struct usb_xpad*) ;
 TYPE_5__* xpad_device ;
 int xpad_init_input (struct usb_xpad*) ;
 int xpad_init_output (struct usb_interface*,struct usb_xpad*,struct usb_endpoint_descriptor*) ;
 int xpad_irq_in ;
 int xpad_presence_work ;

__attribute__((used)) static int xpad_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_xpad *xpad;
 struct usb_endpoint_descriptor *ep_irq_in, *ep_irq_out;
 int i, error;

 if (intf->cur_altsetting->desc.bNumEndpoints != 2)
  return -ENODEV;

 for (i = 0; xpad_device[i].idVendor; i++) {
  if ((le16_to_cpu(udev->descriptor.idVendor) == xpad_device[i].idVendor) &&
      (le16_to_cpu(udev->descriptor.idProduct) == xpad_device[i].idProduct))
   break;
 }

 xpad = kzalloc(sizeof(struct usb_xpad), GFP_KERNEL);
 if (!xpad)
  return -ENOMEM;

 usb_make_path(udev, xpad->phys, sizeof(xpad->phys));
 strlcat(xpad->phys, "/input0", sizeof(xpad->phys));

 xpad->idata = usb_alloc_coherent(udev, XPAD_PKT_LEN,
      GFP_KERNEL, &xpad->idata_dma);
 if (!xpad->idata) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 xpad->irq_in = usb_alloc_urb(0, GFP_KERNEL);
 if (!xpad->irq_in) {
  error = -ENOMEM;
  goto err_free_idata;
 }

 xpad->udev = udev;
 xpad->intf = intf;
 xpad->mapping = xpad_device[i].mapping;
 xpad->xtype = xpad_device[i].xtype;
 xpad->name = xpad_device[i].name;
 INIT_WORK(&xpad->work, xpad_presence_work);

 if (xpad->xtype == XTYPE_UNKNOWN) {
  if (intf->cur_altsetting->desc.bInterfaceClass == USB_CLASS_VENDOR_SPEC) {
   if (intf->cur_altsetting->desc.bInterfaceProtocol == 129)
    xpad->xtype = XTYPE_XBOX360W;
   else if (intf->cur_altsetting->desc.bInterfaceProtocol == 208)
    xpad->xtype = XTYPE_XBOXONE;
   else
    xpad->xtype = XTYPE_XBOX360;
  } else {
   xpad->xtype = XTYPE_XBOX;
  }

  if (dpad_to_buttons)
   xpad->mapping |= MAP_DPAD_TO_BUTTONS;
  if (triggers_to_buttons)
   xpad->mapping |= MAP_TRIGGERS_TO_BUTTONS;
  if (sticks_to_null)
   xpad->mapping |= MAP_STICKS_TO_NULL;
 }

 if (xpad->xtype == XTYPE_XBOXONE &&
     intf->cur_altsetting->desc.bInterfaceNumber != 0) {





  error = -ENODEV;
  goto err_free_in_urb;
 }

 ep_irq_in = ep_irq_out = ((void*)0);

 for (i = 0; i < 2; i++) {
  struct usb_endpoint_descriptor *ep =
    &intf->cur_altsetting->endpoint[i].desc;

  if (usb_endpoint_xfer_int(ep)) {
   if (usb_endpoint_dir_in(ep))
    ep_irq_in = ep;
   else
    ep_irq_out = ep;
  }
 }

 if (!ep_irq_in || !ep_irq_out) {
  error = -ENODEV;
  goto err_free_in_urb;
 }

 error = xpad_init_output(intf, xpad, ep_irq_out);
 if (error)
  goto err_free_in_urb;

 usb_fill_int_urb(xpad->irq_in, udev,
    usb_rcvintpipe(udev, ep_irq_in->bEndpointAddress),
    xpad->idata, XPAD_PKT_LEN, xpad_irq_in,
    xpad, ep_irq_in->bInterval);
 xpad->irq_in->transfer_dma = xpad->idata_dma;
 xpad->irq_in->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 usb_set_intfdata(intf, xpad);

 if (xpad->xtype == XTYPE_XBOX360W) {







  error = xpad360w_start_input(xpad);
  if (error)
   goto err_deinit_output;







  udev->quirks |= USB_QUIRK_RESET_RESUME;
 } else {
  error = xpad_init_input(xpad);
  if (error)
   goto err_deinit_output;
 }
 return 0;

err_deinit_output:
 xpad_deinit_output(xpad);
err_free_in_urb:
 usb_free_urb(xpad->irq_in);
err_free_idata:
 usb_free_coherent(udev, XPAD_PKT_LEN, xpad->idata, xpad->idata_dma);
err_free_mem:
 kfree(xpad);
 return error;
}
