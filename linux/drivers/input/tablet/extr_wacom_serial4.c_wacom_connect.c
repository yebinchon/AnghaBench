
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wacom {int extra_z_bits; int eraser_mask; int flags; int max_x; int max_y; struct input_dev* dev; int res_y; int res_x; int phys; scalar_t__ idx; scalar_t__ tool; } ;
struct serio_driver {int dummy; } ;
struct TYPE_5__ {int extra; } ;
struct serio {char* phys; int dev; TYPE_2__ id; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_4__ {int product; int vendor; int bustype; } ;
struct input_dev {int* evbit; int relbit; int keybit; int propbit; int absbit; TYPE_3__ dev; TYPE_1__ id; int phys; } ;


 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BIT_MASK (int ) ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_MOUSE ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int BUS_RS232 ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int F_COVERS_SCREEN ;
 int F_HAS_SCROLLWHEEL ;
 int F_HAS_STYLUS2 ;
 int GFP_KERNEL ;
 int INPUT_PROP_DIRECT ;
 int INPUT_PROP_POINTER ;
 int REL_WHEEL ;
 int SERIO_WACOM_IV ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int kfree (struct wacom*) ;
 struct wacom* kzalloc (int,int ) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct wacom*) ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int wacom_setup (struct wacom*,struct serio*) ;

__attribute__((used)) static int wacom_connect(struct serio *serio, struct serio_driver *drv)
{
 struct wacom *wacom;
 struct input_dev *input_dev;
 int err = -ENOMEM;

 wacom = kzalloc(sizeof(struct wacom), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!wacom || !input_dev)
  goto free_device;

 wacom->dev = input_dev;
 wacom->extra_z_bits = 1;
 wacom->eraser_mask = 0x04;
 wacom->tool = wacom->idx = 0;
 snprintf(wacom->phys, sizeof(wacom->phys), "%s/input0", serio->phys);
 input_dev->phys = wacom->phys;
 input_dev->id.bustype = BUS_RS232;
 input_dev->id.vendor = SERIO_WACOM_IV;
 input_dev->id.product = serio->id.extra;
 input_dev->dev.parent = &serio->dev;

 input_dev->evbit[0] =
  BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS) | BIT_MASK(EV_REL);
 set_bit(ABS_MISC, input_dev->absbit);
 set_bit(BTN_TOOL_PEN, input_dev->keybit);
 set_bit(BTN_TOOL_RUBBER, input_dev->keybit);
 set_bit(BTN_TOOL_MOUSE, input_dev->keybit);
 set_bit(BTN_TOUCH, input_dev->keybit);
 set_bit(BTN_STYLUS, input_dev->keybit);
 set_bit(BTN_LEFT, input_dev->keybit);
 set_bit(BTN_RIGHT, input_dev->keybit);
 set_bit(BTN_MIDDLE, input_dev->keybit);

 serio_set_drvdata(serio, wacom);

 err = serio_open(serio, drv);
 if (err)
  goto free_device;

 err = wacom_setup(wacom, serio);
 if (err)
  goto close_serio;

 set_bit(INPUT_PROP_DIRECT, input_dev->propbit);
 if (!(wacom->flags & F_COVERS_SCREEN))
  __set_bit(INPUT_PROP_POINTER, input_dev->propbit);

 if (wacom->flags & F_HAS_STYLUS2)
  __set_bit(BTN_STYLUS2, input_dev->keybit);

 if (wacom->flags & F_HAS_SCROLLWHEEL)
  __set_bit(REL_WHEEL, input_dev->relbit);

 input_abs_set_res(wacom->dev, ABS_X, wacom->res_x);
 input_abs_set_res(wacom->dev, ABS_Y, wacom->res_y);
 input_set_abs_params(wacom->dev, ABS_X, 0, wacom->max_x, 0, 0);
 input_set_abs_params(wacom->dev, ABS_Y, 0, wacom->max_y, 0, 0);
 input_set_abs_params(wacom->dev, ABS_PRESSURE, -1,
        (1 << (7 + wacom->extra_z_bits)) - 1, 0, 0);

 err = input_register_device(wacom->dev);
 if (err)
  goto close_serio;

 return 0;

close_serio:
 serio_close(serio);
free_device:
 serio_set_drvdata(serio, ((void*)0));
 input_free_device(input_dev);
 kfree(wacom);
 return err;
}
