
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_7__* cur_altsetting; int num_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_9__ {int idProduct; int idVendor; } ;
struct usb_device {char* product; int dev; TYPE_2__ descriptor; scalar_t__ manufacturer; } ;
struct synusb {int flags; TYPE_4__* urb; int data; struct input_dev* input; struct usb_interface* intf; int phys; int name; int pm_mutex; struct usb_device* udev; } ;
struct TYPE_10__ {int * parent; } ;
struct input_dev {int (* open ) (struct input_dev*) ;int keybit; int propbit; int relbit; int evbit; int (* close ) (struct input_dev*) ;TYPE_3__ dev; int id; int phys; int name; } ;
struct TYPE_8__ {unsigned int bInterfaceNumber; } ;
struct TYPE_12__ {TYPE_1__ desc; } ;
struct TYPE_11__ {int transfer_dma; int transfer_flags; } ;


 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int GFP_KERNEL ;
 int INPUT_PROP_DIRECT ;
 int INPUT_PROP_POINTER ;
 int INPUT_PROP_POINTING_STICK ;
 int REL_X ;
 int REL_Y ;
 int SYNUSB_COMBO ;
 int SYNUSB_IO_ALWAYS ;
 int SYNUSB_RECV_SIZE ;
 int SYNUSB_STICK ;
 int SYNUSB_TOUCHPAD ;
 int SYNUSB_TOUCHSCREEN ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int XMAX_NOMINAL ;
 int XMIN_NOMINAL ;
 int YMAX_NOMINAL ;
 int YMIN_NOMINAL ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*,int,...) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct synusb*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct synusb*) ;
 struct synusb* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 unsigned int min (int ,unsigned int) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,int,int) ;
 int strlcat (int ,char*,int) ;
 int strlcpy (int ,scalar_t__,int) ;
 int strlen (int ) ;
 int synusb_close (struct input_dev*) ;
 struct usb_endpoint_descriptor* synusb_get_in_endpoint (TYPE_7__*) ;
 int synusb_irq ;
 int synusb_open (struct input_dev*) ;
 int usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 TYPE_4__* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (TYPE_4__*,struct usb_device*,int ,int ,int ,int ,struct synusb*,int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (TYPE_4__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_interface (struct usb_device*,unsigned int,unsigned int) ;
 int usb_set_intfdata (struct usb_interface*,struct synusb*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int synusb_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_endpoint_descriptor *ep;
 struct synusb *synusb;
 struct input_dev *input_dev;
 unsigned int intf_num = intf->cur_altsetting->desc.bInterfaceNumber;
 unsigned int altsetting = min(intf->num_altsetting, 1U);
 int error;

 error = usb_set_interface(udev, intf_num, altsetting);
 if (error) {
  dev_err(&udev->dev,
   "Can not set alternate setting to %i, error: %i",
   altsetting, error);
  return error;
 }

 ep = synusb_get_in_endpoint(intf->cur_altsetting);
 if (!ep)
  return -ENODEV;

 synusb = kzalloc(sizeof(*synusb), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!synusb || !input_dev) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 synusb->udev = udev;
 synusb->intf = intf;
 synusb->input = input_dev;
 mutex_init(&synusb->pm_mutex);

 synusb->flags = id->driver_info;
 if (synusb->flags & SYNUSB_COMBO) {




  synusb->flags |= intf_num == 1 ?
     SYNUSB_STICK : SYNUSB_TOUCHPAD;
 }

 synusb->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!synusb->urb) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 synusb->data = usb_alloc_coherent(udev, SYNUSB_RECV_SIZE, GFP_KERNEL,
       &synusb->urb->transfer_dma);
 if (!synusb->data) {
  error = -ENOMEM;
  goto err_free_urb;
 }

 usb_fill_int_urb(synusb->urb, udev,
    usb_rcvintpipe(udev, ep->bEndpointAddress),
    synusb->data, SYNUSB_RECV_SIZE,
    synusb_irq, synusb,
    ep->bInterval);
 synusb->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 if (udev->manufacturer)
  strlcpy(synusb->name, udev->manufacturer,
   sizeof(synusb->name));

 if (udev->product) {
  if (udev->manufacturer)
   strlcat(synusb->name, " ", sizeof(synusb->name));
  strlcat(synusb->name, udev->product, sizeof(synusb->name));
 }

 if (!strlen(synusb->name))
  snprintf(synusb->name, sizeof(synusb->name),
    "USB Synaptics Device %04x:%04x",
    le16_to_cpu(udev->descriptor.idVendor),
    le16_to_cpu(udev->descriptor.idProduct));

 if (synusb->flags & SYNUSB_STICK)
  strlcat(synusb->name, " (Stick)", sizeof(synusb->name));

 usb_make_path(udev, synusb->phys, sizeof(synusb->phys));
 strlcat(synusb->phys, "/input0", sizeof(synusb->phys));

 input_dev->name = synusb->name;
 input_dev->phys = synusb->phys;
 usb_to_input_id(udev, &input_dev->id);
 input_dev->dev.parent = &synusb->intf->dev;

 if (!(synusb->flags & SYNUSB_IO_ALWAYS)) {
  input_dev->open = synusb_open;
  input_dev->close = synusb_close;
 }

 input_set_drvdata(input_dev, synusb);

 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(EV_KEY, input_dev->evbit);

 if (synusb->flags & SYNUSB_STICK) {
  __set_bit(EV_REL, input_dev->evbit);
  __set_bit(REL_X, input_dev->relbit);
  __set_bit(REL_Y, input_dev->relbit);
  __set_bit(INPUT_PROP_POINTING_STICK, input_dev->propbit);
  input_set_abs_params(input_dev, ABS_PRESSURE, 0, 127, 0, 0);
 } else {
  input_set_abs_params(input_dev, ABS_X,
         XMIN_NOMINAL, XMAX_NOMINAL, 0, 0);
  input_set_abs_params(input_dev, ABS_Y,
         YMIN_NOMINAL, YMAX_NOMINAL, 0, 0);
  input_set_abs_params(input_dev, ABS_PRESSURE, 0, 255, 0, 0);
  input_set_abs_params(input_dev, ABS_TOOL_WIDTH, 0, 15, 0, 0);
  __set_bit(BTN_TOUCH, input_dev->keybit);
  __set_bit(BTN_TOOL_FINGER, input_dev->keybit);
  __set_bit(BTN_TOOL_DOUBLETAP, input_dev->keybit);
  __set_bit(BTN_TOOL_TRIPLETAP, input_dev->keybit);
 }

 if (synusb->flags & SYNUSB_TOUCHSCREEN)
  __set_bit(INPUT_PROP_DIRECT, input_dev->propbit);
 else
  __set_bit(INPUT_PROP_POINTER, input_dev->propbit);

 __set_bit(BTN_LEFT, input_dev->keybit);
 __set_bit(BTN_RIGHT, input_dev->keybit);
 __set_bit(BTN_MIDDLE, input_dev->keybit);

 usb_set_intfdata(intf, synusb);

 if (synusb->flags & SYNUSB_IO_ALWAYS) {
  error = synusb_open(input_dev);
  if (error)
   goto err_free_dma;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(&udev->dev,
   "Failed to register input device, error %d\n",
   error);
  goto err_stop_io;
 }

 return 0;

err_stop_io:
 if (synusb->flags & SYNUSB_IO_ALWAYS)
  synusb_close(synusb->input);
err_free_dma:
 usb_free_coherent(udev, SYNUSB_RECV_SIZE, synusb->data,
     synusb->urb->transfer_dma);
err_free_urb:
 usb_free_urb(synusb->urb);
err_free_mem:
 input_free_device(input_dev);
 kfree(synusb);
 usb_set_intfdata(intf, ((void*)0));

 return error;
}
