
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsxxxaa {int phys; int name; struct serio* serio; struct input_dev* dev; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {int relbit; int keybit; int evbit; TYPE_2__ dev; TYPE_1__ id; int phys; int name; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOUCH ;
 int BUS_RS232 ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int GFP_KERNEL ;
 int REL_X ;
 int REL_Y ;
 int __set_bit (int ,int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int kfree (struct vsxxxaa*) ;
 struct vsxxxaa* kzalloc (int,int ) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct vsxxxaa*) ;
 int serio_write (struct serio*,char) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcat (int ,char*,int) ;

__attribute__((used)) static int vsxxxaa_connect(struct serio *serio, struct serio_driver *drv)
{
 struct vsxxxaa *mouse;
 struct input_dev *input_dev;
 int err = -ENOMEM;

 mouse = kzalloc(sizeof(struct vsxxxaa), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!mouse || !input_dev)
  goto fail1;

 mouse->dev = input_dev;
 mouse->serio = serio;
 strlcat(mouse->name, "DEC VSXXX-AA/-GA mouse or VSXXX-AB digitizer",
   sizeof(mouse->name));
 snprintf(mouse->phys, sizeof(mouse->phys), "%s/input0", serio->phys);

 input_dev->name = mouse->name;
 input_dev->phys = mouse->phys;
 input_dev->id.bustype = BUS_RS232;
 input_dev->dev.parent = &serio->dev;

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(EV_REL, input_dev->evbit);
 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(BTN_LEFT, input_dev->keybit);
 __set_bit(BTN_MIDDLE, input_dev->keybit);
 __set_bit(BTN_RIGHT, input_dev->keybit);
 __set_bit(BTN_TOUCH, input_dev->keybit);
 __set_bit(REL_X, input_dev->relbit);
 __set_bit(REL_Y, input_dev->relbit);
 input_set_abs_params(input_dev, ABS_X, 0, 1023, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, 1023, 0, 0);

 serio_set_drvdata(serio, mouse);

 err = serio_open(serio, drv);
 if (err)
  goto fail2;





 serio_write(serio, 'T');

 err = input_register_device(input_dev);
 if (err)
  goto fail3;

 return 0;

 fail3: serio_close(serio);
 fail2: serio_set_drvdata(serio, ((void*)0));
 fail1: input_free_device(input_dev);
 kfree(mouse);
 return err;
}
