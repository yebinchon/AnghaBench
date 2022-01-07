
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct maple_driver {int dummy; } ;
struct TYPE_4__ {int * function_data; } ;
struct maple_device {struct maple_driver* driver; int product_name; int dev; TYPE_1__ devinfo; } ;
struct TYPE_6__ {int bustype; } ;
struct TYPE_5__ {int * parent; struct dc_pad* platform_data; } ;
struct input_dev {TYPE_3__ id; int name; TYPE_2__ dev; int * evbit; scalar_t__* absbit; scalar_t__* keybit; int close; int open; } ;
struct device {int driver; } ;
struct dc_pad {struct maple_device* mdev; struct input_dev* dev; } ;
 int ABS_HAT3Y ;




 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;



 int BTN_JOYSTICK ;





 int BUS_HOST ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int __set_bit (short const,scalar_t__*) ;
 unsigned long be32_to_cpu (int ) ;
 int dc_pad_close ;
 int dc_pad_open ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int,int,int,int ,int ) ;
 int kfree (struct dc_pad*) ;
 struct dc_pad* kzalloc (int,int ) ;
 int maple_set_drvdata (struct maple_device*,struct dc_pad*) ;
 struct maple_device* to_maple_dev (struct device*) ;
 struct maple_driver* to_maple_driver (int ) ;

__attribute__((used)) static int probe_maple_controller(struct device *dev)
{
 static const short btn_bit[32] = {
  133, 134, 135, 131, -1, -1, -1, -1,
  128, 129, 130, 132, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1,
 };

 static const short abs_bit[32] = {
  -1, -1, -1, -1, 142, 142, 143, 143,
  -1, -1, -1, -1, 140, 140, 141, 141,
  144, 145, 137, 136, 139, 138, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1,
 };

 struct maple_device *mdev = to_maple_dev(dev);
 struct maple_driver *mdrv = to_maple_driver(dev->driver);
 int i, error;
 struct dc_pad *pad;
 struct input_dev *idev;
 unsigned long data = be32_to_cpu(mdev->devinfo.function_data[0]);

 pad = kzalloc(sizeof(struct dc_pad), GFP_KERNEL);
 idev = input_allocate_device();
 if (!pad || !idev) {
  error = -ENOMEM;
  goto fail;
 }

 pad->dev = idev;
 pad->mdev = mdev;

 idev->open = dc_pad_open;
 idev->close = dc_pad_close;

 for (i = 0; i < 32; i++) {
  if (data & (1 << i)) {
   if (btn_bit[i] >= 0)
    __set_bit(btn_bit[i], idev->keybit);
   else if (abs_bit[i] >= 0)
    __set_bit(abs_bit[i], idev->absbit);
  }
 }

 if (idev->keybit[BIT_WORD(BTN_JOYSTICK)])
  idev->evbit[0] |= BIT_MASK(EV_KEY);

 if (idev->absbit[0])
  idev->evbit[0] |= BIT_MASK(EV_ABS);

 for (i = 137; i <= 145; i++)
  input_set_abs_params(idev, i, 0, 255, 0, 0);

 for (i = 143; i <= ABS_HAT3Y; i++)
  input_set_abs_params(idev, i, 1, -1, 0, 0);

 idev->dev.platform_data = pad;
 idev->dev.parent = &mdev->dev;
 idev->name = mdev->product_name;
 idev->id.bustype = BUS_HOST;

 error = input_register_device(idev);
 if (error)
  goto fail;

 mdev->driver = mdrv;
 maple_set_drvdata(mdev, pad);

 return 0;

fail:
 input_free_device(idev);
 kfree(pad);
 maple_set_drvdata(mdev, ((void*)0));
 return error;
}
