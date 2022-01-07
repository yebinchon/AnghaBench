
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* serio; } ;
struct psmouse {int pktsize; int resetafter; struct alps_data* private; scalar_t__ resync_time; int reconnect; int disconnect; int poll; int protocol_handler; TYPE_4__ ps2dev; struct input_dev* dev; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int vendor; scalar_t__ version; int product; int bustype; } ;
struct input_dev {int* evbit; int* relbit; int* keybit; char* name; int propbit; TYPE_2__ dev; TYPE_1__ id; int phys; } ;
struct alps_data {int (* hw_init ) (struct psmouse*) ;int flags; scalar_t__ proto_version; int dev3_register_work; struct psmouse* psmouse; struct input_dev* dev2; int phys2; int (* set_abs_params ) (struct alps_data*,struct input_dev*) ;} ;
struct TYPE_7__ {char* phys; int dev; } ;


 int ABS_PRESSURE ;
 int ALPS_BUTTONPAD ;
 int ALPS_DUALPOINT ;
 int ALPS_DUALPOINT_WITH_PRESSURE ;
 int ALPS_FOUR_BUTTONS ;
 int ALPS_FW_BK_1 ;
 int ALPS_FW_BK_2 ;
 scalar_t__ ALPS_PROTO_V4 ;
 int ALPS_WHEEL ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int BUS_I8042 ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INPUT_PROP_BUTTONPAD ;
 int INPUT_PROP_POINTER ;
 int INPUT_PROP_POINTING_STICK ;
 int PSMOUSE_ALPS ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int __clear_bit (int ,int*) ;
 int __set_bit (int ,int ) ;
 int alps_disconnect ;
 int alps_poll ;
 int alps_process_byte ;
 int alps_reconnect ;
 int alps_register_bare_ps2_mouse ;
 int clear_bit (int ,int*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct alps_data*) ;
 int psmouse_err (struct psmouse*,char*,...) ;
 int psmouse_reset (struct psmouse*) ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int stub1 (struct psmouse*) ;
 int stub2 (struct alps_data*,struct input_dev*) ;

int alps_init(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 struct input_dev *dev1 = psmouse->dev;
 int error;

 error = priv->hw_init(psmouse);
 if (error)
  goto init_fail;





 __clear_bit(EV_REL, dev1->evbit);
 __clear_bit(REL_X, dev1->relbit);
 __clear_bit(REL_Y, dev1->relbit);




 dev1->evbit[BIT_WORD(EV_KEY)] |= BIT_MASK(EV_KEY);
 dev1->keybit[BIT_WORD(BTN_TOUCH)] |= BIT_MASK(BTN_TOUCH);
 dev1->keybit[BIT_WORD(BTN_TOOL_FINGER)] |= BIT_MASK(BTN_TOOL_FINGER);
 dev1->keybit[BIT_WORD(BTN_LEFT)] |=
  BIT_MASK(BTN_LEFT) | BIT_MASK(BTN_RIGHT);

 dev1->evbit[BIT_WORD(EV_ABS)] |= BIT_MASK(EV_ABS);

 priv->set_abs_params(priv, dev1);

 if (priv->flags & ALPS_WHEEL) {
  dev1->evbit[BIT_WORD(EV_REL)] |= BIT_MASK(EV_REL);
  dev1->relbit[BIT_WORD(REL_WHEEL)] |= BIT_MASK(REL_WHEEL);
 }

 if (priv->flags & (ALPS_FW_BK_1 | ALPS_FW_BK_2)) {
  dev1->keybit[BIT_WORD(BTN_FORWARD)] |= BIT_MASK(BTN_FORWARD);
  dev1->keybit[BIT_WORD(BTN_BACK)] |= BIT_MASK(BTN_BACK);
 }

 if (priv->flags & ALPS_FOUR_BUTTONS) {
  dev1->keybit[BIT_WORD(BTN_0)] |= BIT_MASK(BTN_0);
  dev1->keybit[BIT_WORD(BTN_1)] |= BIT_MASK(BTN_1);
  dev1->keybit[BIT_WORD(BTN_2)] |= BIT_MASK(BTN_2);
  dev1->keybit[BIT_WORD(BTN_3)] |= BIT_MASK(BTN_3);
 } else if (priv->flags & ALPS_BUTTONPAD) {
  set_bit(INPUT_PROP_BUTTONPAD, dev1->propbit);
  clear_bit(BTN_RIGHT, dev1->keybit);
 } else {
  dev1->keybit[BIT_WORD(BTN_MIDDLE)] |= BIT_MASK(BTN_MIDDLE);
 }

 if (priv->flags & ALPS_DUALPOINT) {
  struct input_dev *dev2;

  dev2 = input_allocate_device();
  if (!dev2) {
   psmouse_err(psmouse,
        "failed to allocate trackstick device\n");
   error = -ENOMEM;
   goto init_fail;
  }

  snprintf(priv->phys2, sizeof(priv->phys2), "%s/input1",
    psmouse->ps2dev.serio->phys);
  dev2->phys = priv->phys2;





  dev2->name = "AlpsPS/2 ALPS DualPoint Stick";

  dev2->id.bustype = BUS_I8042;
  dev2->id.vendor = 0x0002;
  dev2->id.product = PSMOUSE_ALPS;
  dev2->id.version = priv->proto_version;
  dev2->dev.parent = &psmouse->ps2dev.serio->dev;

  input_set_capability(dev2, EV_REL, REL_X);
  input_set_capability(dev2, EV_REL, REL_Y);
  if (priv->flags & ALPS_DUALPOINT_WITH_PRESSURE) {
   input_set_capability(dev2, EV_ABS, ABS_PRESSURE);
   input_set_abs_params(dev2, ABS_PRESSURE, 0, 127, 0, 0);
  }
  input_set_capability(dev2, EV_KEY, BTN_LEFT);
  input_set_capability(dev2, EV_KEY, BTN_RIGHT);
  input_set_capability(dev2, EV_KEY, BTN_MIDDLE);

  __set_bit(INPUT_PROP_POINTER, dev2->propbit);
  __set_bit(INPUT_PROP_POINTING_STICK, dev2->propbit);

  error = input_register_device(dev2);
  if (error) {
   psmouse_err(psmouse,
        "failed to register trackstick device: %d\n",
        error);
   input_free_device(dev2);
   goto init_fail;
  }

  priv->dev2 = dev2;
 }

 priv->psmouse = psmouse;

 INIT_DELAYED_WORK(&priv->dev3_register_work,
     alps_register_bare_ps2_mouse);

 psmouse->protocol_handler = alps_process_byte;
 psmouse->poll = alps_poll;
 psmouse->disconnect = alps_disconnect;
 psmouse->reconnect = alps_reconnect;
 psmouse->pktsize = priv->proto_version == ALPS_PROTO_V4 ? 8 : 6;


 psmouse->resync_time = 0;


 psmouse->resetafter = psmouse->pktsize * 2;

 return 0;

init_fail:
 psmouse_reset(psmouse);




 kfree(psmouse->private);
 psmouse->private = ((void*)0);
 return error;
}
