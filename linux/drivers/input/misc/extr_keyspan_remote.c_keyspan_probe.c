
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_keyspan {int toggle; int in_dma; int in_buffer; TYPE_3__* irq_urb; struct input_dev* input; struct usb_device* udev; int * keymap; int phys; int name; struct usb_endpoint_descriptor* in_endpoint; struct usb_interface* interface; } ;
struct usb_interface {int dev; int cur_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int idProduct; int idVendor; } ;
struct usb_device {char* product; TYPE_1__ descriptor; scalar_t__ manufacturer; } ;
struct TYPE_7__ {int * parent; } ;
struct input_dev {int keycodesize; int keycodemax; int close; int open; int keybit; int evbit; int * keycode; TYPE_2__ dev; int id; int phys; int name; } ;
struct TYPE_8__ {int transfer_flags; int transfer_dma; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_MSC ;
 int GFP_KERNEL ;
 int KEY_RESERVED ;
 int MSC_SCAN ;
 int RECV_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct usb_keyspan*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int keyspan_close ;
 struct usb_endpoint_descriptor* keyspan_get_in_endpoint (int ) ;
 int keyspan_irq_recv ;
 int * keyspan_key_table ;
 int keyspan_open ;
 int keyspan_setup (struct usb_device*) ;
 int kfree (struct usb_keyspan*) ;
 struct usb_keyspan* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int snprintf (int ,int,char*,int,int) ;
 int strlcat (int ,char*,int) ;
 int strlcpy (int ,scalar_t__,int) ;
 int strlen (int ) ;
 int usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 TYPE_3__* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (TYPE_3__*,struct usb_device*,int ,int ,int ,int ,struct usb_keyspan*,int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (TYPE_3__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_keyspan*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int keyspan_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_endpoint_descriptor *endpoint;
 struct usb_keyspan *remote;
 struct input_dev *input_dev;
 int i, error;

 endpoint = keyspan_get_in_endpoint(interface->cur_altsetting);
 if (!endpoint)
  return -ENODEV;

 remote = kzalloc(sizeof(*remote), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!remote || !input_dev) {
  error = -ENOMEM;
  goto fail1;
 }

 remote->udev = udev;
 remote->input = input_dev;
 remote->interface = interface;
 remote->in_endpoint = endpoint;
 remote->toggle = -1;

 remote->in_buffer = usb_alloc_coherent(udev, RECV_SIZE, GFP_KERNEL, &remote->in_dma);
 if (!remote->in_buffer) {
  error = -ENOMEM;
  goto fail1;
 }

 remote->irq_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!remote->irq_urb) {
  error = -ENOMEM;
  goto fail2;
 }

 error = keyspan_setup(udev);
 if (error) {
  error = -ENODEV;
  goto fail3;
 }

 if (udev->manufacturer)
  strlcpy(remote->name, udev->manufacturer, sizeof(remote->name));

 if (udev->product) {
  if (udev->manufacturer)
   strlcat(remote->name, " ", sizeof(remote->name));
  strlcat(remote->name, udev->product, sizeof(remote->name));
 }

 if (!strlen(remote->name))
  snprintf(remote->name, sizeof(remote->name),
    "USB Keyspan Remote %04x:%04x",
    le16_to_cpu(udev->descriptor.idVendor),
    le16_to_cpu(udev->descriptor.idProduct));

 usb_make_path(udev, remote->phys, sizeof(remote->phys));
 strlcat(remote->phys, "/input0", sizeof(remote->phys));
 memcpy(remote->keymap, keyspan_key_table, sizeof(remote->keymap));

 input_dev->name = remote->name;
 input_dev->phys = remote->phys;
 usb_to_input_id(udev, &input_dev->id);
 input_dev->dev.parent = &interface->dev;
 input_dev->keycode = remote->keymap;
 input_dev->keycodesize = sizeof(unsigned short);
 input_dev->keycodemax = ARRAY_SIZE(remote->keymap);

 input_set_capability(input_dev, EV_MSC, MSC_SCAN);
 __set_bit(EV_KEY, input_dev->evbit);
 for (i = 0; i < ARRAY_SIZE(keyspan_key_table); i++)
  __set_bit(keyspan_key_table[i], input_dev->keybit);
 __clear_bit(KEY_RESERVED, input_dev->keybit);

 input_set_drvdata(input_dev, remote);

 input_dev->open = keyspan_open;
 input_dev->close = keyspan_close;





 usb_fill_int_urb(remote->irq_urb,
    remote->udev,
    usb_rcvintpipe(remote->udev, endpoint->bEndpointAddress),
    remote->in_buffer, RECV_SIZE, keyspan_irq_recv, remote,
    endpoint->bInterval);
 remote->irq_urb->transfer_dma = remote->in_dma;
 remote->irq_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;


 error = input_register_device(remote->input);
 if (error)
  goto fail3;


 usb_set_intfdata(interface, remote);

 return 0;

 fail3: usb_free_urb(remote->irq_urb);
 fail2: usb_free_coherent(udev, RECV_SIZE, remote->in_buffer, remote->in_dma);
 fail1: kfree(remote);
 input_free_device(input_dev);

 return error;
}
