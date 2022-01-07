
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmmouse_data {struct input_dev* abs_dev; int dev_name; int phys; } ;
struct TYPE_8__ {TYPE_3__* serio; } ;
struct psmouse {struct vmmouse_data* private; int reconnect; int disconnect; int protocol_handler; TYPE_4__ ps2dev; int model; struct input_dev* dev; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int vendor; int version; int product; int bustype; } ;
struct input_dev {TYPE_2__ dev; TYPE_1__ id; int name; int phys; } ;
struct TYPE_7__ {char* phys; int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BUS_I8042 ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int GFP_KERNEL ;
 int PSMOUSE_VMMOUSE ;
 int REL_WHEEL ;
 int VMMOUSE_MAX_X ;
 int VMMOUSE_MAX_Y ;
 char* VMMOUSE_NAME ;
 char* VMMOUSE_PSNAME ;
 char* VMMOUSE_VENDOR ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct vmmouse_data*) ;
 struct vmmouse_data* kzalloc (int,int ) ;
 int psmouse_reset (struct psmouse*) ;
 int snprintf (int ,int,char*,char*,...) ;
 int vmmouse_disable (struct psmouse*) ;
 int vmmouse_disconnect ;
 int vmmouse_enable (struct psmouse*) ;
 int vmmouse_process_byte ;
 int vmmouse_reconnect ;

int vmmouse_init(struct psmouse *psmouse)
{
 struct vmmouse_data *priv;
 struct input_dev *rel_dev = psmouse->dev, *abs_dev;
 int error;

 psmouse_reset(psmouse);
 error = vmmouse_enable(psmouse);
 if (error)
  return error;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 abs_dev = input_allocate_device();
 if (!priv || !abs_dev) {
  error = -ENOMEM;
  goto init_fail;
 }

 priv->abs_dev = abs_dev;
 psmouse->private = priv;


 snprintf(priv->phys, sizeof(priv->phys), "%s/input1",
   psmouse->ps2dev.serio->phys);


 snprintf(priv->dev_name, sizeof(priv->dev_name), "%s %s %s",
   VMMOUSE_PSNAME, VMMOUSE_VENDOR, VMMOUSE_NAME);
 abs_dev->phys = priv->phys;
 abs_dev->name = priv->dev_name;
 abs_dev->id.bustype = BUS_I8042;
 abs_dev->id.vendor = 0x0002;
 abs_dev->id.product = PSMOUSE_VMMOUSE;
 abs_dev->id.version = psmouse->model;
 abs_dev->dev.parent = &psmouse->ps2dev.serio->dev;


 input_set_capability(abs_dev, EV_KEY, BTN_LEFT);
 input_set_capability(abs_dev, EV_KEY, BTN_RIGHT);
 input_set_capability(abs_dev, EV_KEY, BTN_MIDDLE);
 input_set_capability(abs_dev, EV_ABS, ABS_X);
 input_set_capability(abs_dev, EV_ABS, ABS_Y);
 input_set_abs_params(abs_dev, ABS_X, 0, VMMOUSE_MAX_X, 0, 0);
 input_set_abs_params(abs_dev, ABS_Y, 0, VMMOUSE_MAX_Y, 0, 0);

 error = input_register_device(priv->abs_dev);
 if (error)
  goto init_fail;


 input_set_capability(rel_dev, EV_REL, REL_WHEEL);

 psmouse->protocol_handler = vmmouse_process_byte;
 psmouse->disconnect = vmmouse_disconnect;
 psmouse->reconnect = vmmouse_reconnect;

 return 0;

init_fail:
 vmmouse_disable(psmouse);
 psmouse_reset(psmouse);
 input_free_device(abs_dev);
 kfree(priv);
 psmouse->private = ((void*)0);

 return error;
}
