
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct kbtab {int data_dma; int data; TYPE_5__* irq; struct input_dev* dev; int phys; struct usb_interface* intf; } ;
struct TYPE_11__ {int * parent; } ;
struct input_dev {char* name; int* evbit; int* keybit; int close; int open; TYPE_4__ dev; int id; int phys; } ;
struct TYPE_12__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_8__ {int bNumEndpoints; } ;
struct TYPE_10__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_DIGI ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_PEN ;
 int BTN_TOUCH ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int,int ) ;
 int input_set_drvdata (struct input_dev*,struct kbtab*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kbtab_close ;
 int kbtab_irq ;
 int kbtab_open ;
 int kfree (struct kbtab*) ;
 struct kbtab* kzalloc (int,int ) ;
 int strlcat (int ,char*,int) ;
 int usb_alloc_coherent (struct usb_device*,int,int ,int *) ;
 TYPE_5__* usb_alloc_urb (int ,int ) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (TYPE_5__*,struct usb_device*,int ,int ,int,int ,struct kbtab*,int ) ;
 int usb_free_coherent (struct usb_device*,int,int ,int ) ;
 int usb_free_urb (TYPE_5__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct kbtab*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int kbtab_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usb_endpoint_descriptor *endpoint;
 struct kbtab *kbtab;
 struct input_dev *input_dev;
 int error = -ENOMEM;

 if (intf->cur_altsetting->desc.bNumEndpoints < 1)
  return -ENODEV;

 endpoint = &intf->cur_altsetting->endpoint[0].desc;
 if (!usb_endpoint_is_int_in(endpoint))
  return -ENODEV;

 kbtab = kzalloc(sizeof(struct kbtab), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!kbtab || !input_dev)
  goto fail1;

 kbtab->data = usb_alloc_coherent(dev, 8, GFP_KERNEL, &kbtab->data_dma);
 if (!kbtab->data)
  goto fail1;

 kbtab->irq = usb_alloc_urb(0, GFP_KERNEL);
 if (!kbtab->irq)
  goto fail2;

 kbtab->intf = intf;
 kbtab->dev = input_dev;

 usb_make_path(dev, kbtab->phys, sizeof(kbtab->phys));
 strlcat(kbtab->phys, "/input0", sizeof(kbtab->phys));

 input_dev->name = "KB Gear Tablet";
 input_dev->phys = kbtab->phys;
 usb_to_input_id(dev, &input_dev->id);
 input_dev->dev.parent = &intf->dev;

 input_set_drvdata(input_dev, kbtab);

 input_dev->open = kbtab_open;
 input_dev->close = kbtab_close;

 input_dev->evbit[0] |= BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);
 input_dev->keybit[BIT_WORD(BTN_LEFT)] |=
  BIT_MASK(BTN_LEFT) | BIT_MASK(BTN_RIGHT);
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |=
  BIT_MASK(BTN_TOOL_PEN) | BIT_MASK(BTN_TOUCH);
 input_set_abs_params(input_dev, ABS_X, 0, 0x2000, 4, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, 0x1750, 4, 0);
 input_set_abs_params(input_dev, ABS_PRESSURE, 0, 0xff, 0, 0);

 usb_fill_int_urb(kbtab->irq, dev,
    usb_rcvintpipe(dev, endpoint->bEndpointAddress),
    kbtab->data, 8,
    kbtab_irq, kbtab, endpoint->bInterval);
 kbtab->irq->transfer_dma = kbtab->data_dma;
 kbtab->irq->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 error = input_register_device(kbtab->dev);
 if (error)
  goto fail3;

 usb_set_intfdata(intf, kbtab);

 return 0;

 fail3: usb_free_urb(kbtab->irq);
 fail2: usb_free_coherent(dev, 8, kbtab->data, kbtab->data_dma);
 fail1: input_free_device(input_dev);
 kfree(kbtab);
 return error;
}
