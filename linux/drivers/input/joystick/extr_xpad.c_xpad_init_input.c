
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_xpad {scalar_t__ xtype; int mapping; int input_created; struct input_dev* dev; TYPE_2__* intf; int udev; int phys; int name; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_6__ {int product; } ;
struct input_dev {int close; int open; TYPE_1__ dev; TYPE_3__ id; int phys; int name; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int EV_KEY ;
 int MAP_DPAD_TO_BUTTONS ;
 int MAP_STICKS_TO_NULL ;
 int MAP_TRIGGERS_TO_BUTTONS ;
 scalar_t__ XTYPE_XBOX360 ;
 scalar_t__ XTYPE_XBOX360W ;
 scalar_t__ XTYPE_XBOXONE ;
 struct input_dev* input_allocate_device () ;
 int input_ff_destroy (struct input_dev*) ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,scalar_t__) ;
 int input_set_drvdata (struct input_dev*,struct usb_xpad*) ;
 int usb_to_input_id (int ,TYPE_3__*) ;
 scalar_t__* xpad360_btn ;
 scalar_t__* xpad_abs ;
 scalar_t__* xpad_abs_pad ;
 scalar_t__* xpad_abs_triggers ;
 scalar_t__* xpad_btn ;
 scalar_t__* xpad_btn_pad ;
 scalar_t__* xpad_btn_triggers ;
 int xpad_close ;
 scalar_t__* xpad_common_btn ;
 int xpad_init_ff (struct usb_xpad*) ;
 int xpad_led_disconnect (struct usb_xpad*) ;
 int xpad_led_probe (struct usb_xpad*) ;
 int xpad_open ;
 int xpad_set_up_abs (struct input_dev*,scalar_t__) ;

__attribute__((used)) static int xpad_init_input(struct usb_xpad *xpad)
{
 struct input_dev *input_dev;
 int i, error;

 input_dev = input_allocate_device();
 if (!input_dev)
  return -ENOMEM;

 xpad->dev = input_dev;
 input_dev->name = xpad->name;
 input_dev->phys = xpad->phys;
 usb_to_input_id(xpad->udev, &input_dev->id);

 if (xpad->xtype == XTYPE_XBOX360W) {

  input_dev->id.product = 0x02a1;
 }

 input_dev->dev.parent = &xpad->intf->dev;

 input_set_drvdata(input_dev, xpad);

 if (xpad->xtype != XTYPE_XBOX360W) {
  input_dev->open = xpad_open;
  input_dev->close = xpad_close;
 }

 if (!(xpad->mapping & MAP_STICKS_TO_NULL)) {

  for (i = 0; xpad_abs[i] >= 0; i++)
   xpad_set_up_abs(input_dev, xpad_abs[i]);
 }


 for (i = 0; xpad_common_btn[i] >= 0; i++)
  input_set_capability(input_dev, EV_KEY, xpad_common_btn[i]);


 if (xpad->xtype == XTYPE_XBOX360 || xpad->xtype == XTYPE_XBOX360W ||
     xpad->xtype == XTYPE_XBOXONE) {
  for (i = 0; xpad360_btn[i] >= 0; i++)
   input_set_capability(input_dev, EV_KEY, xpad360_btn[i]);
 } else {
  for (i = 0; xpad_btn[i] >= 0; i++)
   input_set_capability(input_dev, EV_KEY, xpad_btn[i]);
 }

 if (xpad->mapping & MAP_DPAD_TO_BUTTONS) {
  for (i = 0; xpad_btn_pad[i] >= 0; i++)
   input_set_capability(input_dev, EV_KEY,
          xpad_btn_pad[i]);
 }







 if (!(xpad->mapping & MAP_DPAD_TO_BUTTONS) ||
     xpad->xtype == XTYPE_XBOX360W) {
  for (i = 0; xpad_abs_pad[i] >= 0; i++)
   xpad_set_up_abs(input_dev, xpad_abs_pad[i]);
 }

 if (xpad->mapping & MAP_TRIGGERS_TO_BUTTONS) {
  for (i = 0; xpad_btn_triggers[i] >= 0; i++)
   input_set_capability(input_dev, EV_KEY,
          xpad_btn_triggers[i]);
 } else {
  for (i = 0; xpad_abs_triggers[i] >= 0; i++)
   xpad_set_up_abs(input_dev, xpad_abs_triggers[i]);
 }

 error = xpad_init_ff(xpad);
 if (error)
  goto err_free_input;

 error = xpad_led_probe(xpad);
 if (error)
  goto err_destroy_ff;

 error = input_register_device(xpad->dev);
 if (error)
  goto err_disconnect_led;

 xpad->input_created = 1;
 return 0;

err_disconnect_led:
 xpad_led_disconnect(xpad);
err_destroy_ff:
 input_ff_destroy(input_dev);
err_free_input:
 input_free_device(input_dev);
 return error;
}
