
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct TYPE_9__ {int * parent; } ;
struct input_dev {char* name; int keybit; int evbit; int close; int open; TYPE_3__ dev; int id; int phys; } ;
struct atp_info {int xsensors; int xfact; int ysensors; int yfact; int datalen; int fuzz; int callback; } ;
struct atp {int overflow_warned; TYPE_4__* urb; int data; struct atp_info const* info; struct usb_device* udev; int work; struct input_dev* input; int phys; struct usb_interface* intf; } ;
struct TYPE_10__ {int transfer_dma; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ATP_PRESSURE ;
 int BTN_LEFT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int EIO ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atp_close ;
 int atp_handle_geyser (struct atp*) ;
 int atp_open ;
 int atp_reinit ;
 int dev_err (int *,char*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct atp*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct atp*) ;
 struct atp* kzalloc (int,int ) ;
 int set_bit (int ,int ) ;
 int strlcat (int ,char*,int) ;
 int usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 TYPE_4__* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (TYPE_4__*,struct usb_device*,int ,int ,int ,int ,struct atp*,int) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (TYPE_4__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int) ;
 int usb_set_intfdata (struct usb_interface*,struct atp*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int atp_probe(struct usb_interface *iface,
       const struct usb_device_id *id)
{
 struct atp *dev;
 struct input_dev *input_dev;
 struct usb_device *udev = interface_to_usbdev(iface);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 int int_in_endpointAddr = 0;
 int i, error = -ENOMEM;
 const struct atp_info *info = (const struct atp_info *)id->driver_info;



 iface_desc = iface->cur_altsetting;
 for (i = 0; i < iface_desc->desc.bNumEndpoints; i++) {
  endpoint = &iface_desc->endpoint[i].desc;
  if (!int_in_endpointAddr && usb_endpoint_is_int_in(endpoint)) {

   int_in_endpointAddr = endpoint->bEndpointAddress;
   break;
  }
 }
 if (!int_in_endpointAddr) {
  dev_err(&iface->dev, "Could not find int-in endpoint\n");
  return -EIO;
 }


 dev = kzalloc(sizeof(struct atp), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!dev || !input_dev) {
  dev_err(&iface->dev, "Out of memory\n");
  goto err_free_devs;
 }

 dev->udev = udev;
 dev->intf = iface;
 dev->input = input_dev;
 dev->info = info;
 dev->overflow_warned = 0;

 dev->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!dev->urb)
  goto err_free_devs;

 dev->data = usb_alloc_coherent(dev->udev, dev->info->datalen, GFP_KERNEL,
           &dev->urb->transfer_dma);
 if (!dev->data)
  goto err_free_urb;

 usb_fill_int_urb(dev->urb, udev,
    usb_rcvintpipe(udev, int_in_endpointAddr),
    dev->data, dev->info->datalen,
    dev->info->callback, dev, 1);

 error = atp_handle_geyser(dev);
 if (error)
  goto err_free_buffer;

 usb_make_path(udev, dev->phys, sizeof(dev->phys));
 strlcat(dev->phys, "/input0", sizeof(dev->phys));

 input_dev->name = "appletouch";
 input_dev->phys = dev->phys;
 usb_to_input_id(dev->udev, &input_dev->id);
 input_dev->dev.parent = &iface->dev;

 input_set_drvdata(input_dev, dev);

 input_dev->open = atp_open;
 input_dev->close = atp_close;

 set_bit(EV_ABS, input_dev->evbit);

 input_set_abs_params(input_dev, ABS_X, 0,
        (dev->info->xsensors - 1) * dev->info->xfact - 1,
        dev->info->fuzz, 0);
 input_set_abs_params(input_dev, ABS_Y, 0,
        (dev->info->ysensors - 1) * dev->info->yfact - 1,
        dev->info->fuzz, 0);
 input_set_abs_params(input_dev, ABS_PRESSURE, 0, ATP_PRESSURE, 0, 0);

 set_bit(EV_KEY, input_dev->evbit);
 set_bit(BTN_TOUCH, input_dev->keybit);
 set_bit(BTN_TOOL_FINGER, input_dev->keybit);
 set_bit(BTN_TOOL_DOUBLETAP, input_dev->keybit);
 set_bit(BTN_TOOL_TRIPLETAP, input_dev->keybit);
 set_bit(BTN_LEFT, input_dev->keybit);

 error = input_register_device(dev->input);
 if (error)
  goto err_free_buffer;


 usb_set_intfdata(iface, dev);

 INIT_WORK(&dev->work, atp_reinit);

 return 0;

 err_free_buffer:
 usb_free_coherent(dev->udev, dev->info->datalen,
     dev->data, dev->urb->transfer_dma);
 err_free_urb:
 usb_free_urb(dev->urb);
 err_free_devs:
 usb_set_intfdata(iface, ((void*)0));
 kfree(dev);
 input_free_device(input_dev);
 return error;
}
