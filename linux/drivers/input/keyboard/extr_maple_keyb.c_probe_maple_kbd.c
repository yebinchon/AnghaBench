
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct maple_driver {int dummy; } ;
struct maple_device {struct maple_driver* driver; int dev; int product_name; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {int* evbit; int keycodesize; int keybit; TYPE_2__ dev; TYPE_1__ id; int keycodemax; int keycode; int name; } ;
struct device {int driver; } ;
struct dc_kbd {int keycode; struct input_dev* dev; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int HZ ;
 int KEY_RESERVED ;
 int MAPLE_FUNC_KEYBOARD ;
 int MSC_SCAN ;
 int NR_SCANCODES ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int dc_kbd_callback ;
 int * dc_kbd_keycode ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct dc_kbd*) ;
 struct dc_kbd* kzalloc (int,int ) ;
 int maple_getcond_callback (struct maple_device*,int ,int,int ) ;
 int maple_set_drvdata (struct maple_device*,struct dc_kbd*) ;
 int memcpy (int ,int *,int) ;
 struct maple_device* to_maple_dev (struct device*) ;
 struct maple_driver* to_maple_driver (int ) ;

__attribute__((used)) static int probe_maple_kbd(struct device *dev)
{
 struct maple_device *mdev;
 struct maple_driver *mdrv;
 int i, error;
 struct dc_kbd *kbd;
 struct input_dev *idev;

 mdev = to_maple_dev(dev);
 mdrv = to_maple_driver(dev->driver);

 kbd = kzalloc(sizeof(struct dc_kbd), GFP_KERNEL);
 if (!kbd) {
  error = -ENOMEM;
  goto fail;
 }

 idev = input_allocate_device();
 if (!idev) {
  error = -ENOMEM;
  goto fail_idev_alloc;
 }

 kbd->dev = idev;
 memcpy(kbd->keycode, dc_kbd_keycode, sizeof(kbd->keycode));

 idev->name = mdev->product_name;
 idev->evbit[0] = BIT(EV_KEY) | BIT(EV_REP);
 idev->keycode = kbd->keycode;
 idev->keycodesize = sizeof(unsigned short);
 idev->keycodemax = ARRAY_SIZE(kbd->keycode);
 idev->id.bustype = BUS_HOST;
 idev->dev.parent = &mdev->dev;

 for (i = 0; i < NR_SCANCODES; i++)
  __set_bit(dc_kbd_keycode[i], idev->keybit);
 __clear_bit(KEY_RESERVED, idev->keybit);

 input_set_capability(idev, EV_MSC, MSC_SCAN);

 error = input_register_device(idev);
 if (error)
  goto fail_register;


 maple_getcond_callback(mdev, dc_kbd_callback, HZ/50,
  MAPLE_FUNC_KEYBOARD);

 mdev->driver = mdrv;

 maple_set_drvdata(mdev, kbd);

 return error;

fail_register:
 maple_set_drvdata(mdev, ((void*)0));
 input_free_device(idev);
fail_idev_alloc:
 kfree(kbd);
fail:
 return error;
}
