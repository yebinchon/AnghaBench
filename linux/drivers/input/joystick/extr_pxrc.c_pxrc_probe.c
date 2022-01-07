
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {int dev; int cur_altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct pxrc {TYPE_1__* input; int phys; int urb; struct usb_interface* intf; int pm_mutex; } ;
struct TYPE_6__ {char* name; int close; int open; int id; int phys; } ;


 int ABS_MISC ;
 int ABS_RUDDER ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_THROTTLE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_A ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,struct pxrc*) ;
 TYPE_1__* devm_input_allocate_device (int *) ;
 void* devm_kmalloc (int *,size_t,int ) ;
 struct pxrc* devm_kzalloc (int *,int,int ) ;
 int input_register_device (TYPE_1__*) ;
 int input_set_abs_params (TYPE_1__*,int ,int ,int,int ,int ) ;
 int input_set_capability (TYPE_1__*,int ,int ) ;
 int input_set_drvdata (TYPE_1__*,struct pxrc*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mutex_init (int *) ;
 int pxrc_close ;
 int pxrc_free_urb ;
 int pxrc_open ;
 int pxrc_usb_irq ;
 int strlcat (int ,char*,int) ;
 int usb_alloc_urb (int ,int ) ;
 size_t usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,void*,size_t,int ,struct pxrc*,int) ;
 int usb_find_common_endpoints (int ,int *,int *,struct usb_endpoint_descriptor**,int *) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct pxrc*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int pxrc_probe(struct usb_interface *intf,
        const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct pxrc *pxrc;
 struct usb_endpoint_descriptor *epirq;
 size_t xfer_size;
 void *xfer_buf;
 int error;





 error = usb_find_common_endpoints(intf->cur_altsetting,
       ((void*)0), ((void*)0), &epirq, ((void*)0));
 if (error) {
  dev_err(&intf->dev, "Could not find endpoint\n");
  return error;
 }

 pxrc = devm_kzalloc(&intf->dev, sizeof(*pxrc), GFP_KERNEL);
 if (!pxrc)
  return -ENOMEM;

 mutex_init(&pxrc->pm_mutex);
 pxrc->intf = intf;

 usb_set_intfdata(pxrc->intf, pxrc);

 xfer_size = usb_endpoint_maxp(epirq);
 xfer_buf = devm_kmalloc(&intf->dev, xfer_size, GFP_KERNEL);
 if (!xfer_buf)
  return -ENOMEM;

 pxrc->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!pxrc->urb)
  return -ENOMEM;

 error = devm_add_action_or_reset(&intf->dev, pxrc_free_urb, pxrc);
 if (error)
  return error;

 usb_fill_int_urb(pxrc->urb, udev,
    usb_rcvintpipe(udev, epirq->bEndpointAddress),
    xfer_buf, xfer_size, pxrc_usb_irq, pxrc, 1);

 pxrc->input = devm_input_allocate_device(&intf->dev);
 if (!pxrc->input) {
  dev_err(&intf->dev, "couldn't allocate input device\n");
  return -ENOMEM;
 }

 pxrc->input->name = "PXRC Flight Controller Adapter";

 usb_make_path(udev, pxrc->phys, sizeof(pxrc->phys));
 strlcat(pxrc->phys, "/input0", sizeof(pxrc->phys));
 pxrc->input->phys = pxrc->phys;

 usb_to_input_id(udev, &pxrc->input->id);

 pxrc->input->open = pxrc_open;
 pxrc->input->close = pxrc_close;

 input_set_capability(pxrc->input, EV_KEY, BTN_A);
 input_set_abs_params(pxrc->input, ABS_X, 0, 255, 0, 0);
 input_set_abs_params(pxrc->input, ABS_Y, 0, 255, 0, 0);
 input_set_abs_params(pxrc->input, ABS_RX, 0, 255, 0, 0);
 input_set_abs_params(pxrc->input, ABS_RY, 0, 255, 0, 0);
 input_set_abs_params(pxrc->input, ABS_RUDDER, 0, 255, 0, 0);
 input_set_abs_params(pxrc->input, ABS_THROTTLE, 0, 255, 0, 0);
 input_set_abs_params(pxrc->input, ABS_MISC, 0, 255, 0, 0);

 input_set_drvdata(pxrc->input, pxrc);

 error = input_register_device(pxrc->input);
 if (error)
  return error;

 return 0;
}
