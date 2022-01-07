
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktsize; scalar_t__ resync_time; int protocol_handler; int reconnect; int disconnect; struct byd_data* private; struct input_dev* dev; } ;
struct input_dev {int relbit; int evbit; int keybit; int propbit; } ;
struct byd_data {int timer; struct psmouse* psmouse; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int BYD_PAD_HEIGHT ;
 int BYD_PAD_RESOLUTION ;
 int BYD_PAD_WIDTH ;
 int EIO ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_REL ;
 int GFP_KERNEL ;
 int INPUT_PROP_POINTER ;
 int REL_X ;
 int REL_Y ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int byd_clear_touch ;
 int byd_disconnect ;
 int byd_process_byte ;
 int byd_reconnect ;
 scalar_t__ byd_reset_touchpad (struct psmouse*) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 struct byd_data* kzalloc (int,int ) ;
 scalar_t__ psmouse_reset (struct psmouse*) ;
 int timer_setup (int *,int ,int ) ;

int byd_init(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct byd_data *priv;

 if (psmouse_reset(psmouse))
  return -EIO;

 if (byd_reset_touchpad(psmouse))
  return -EIO;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->psmouse = psmouse;
 timer_setup(&priv->timer, byd_clear_touch, 0);

 psmouse->private = priv;
 psmouse->disconnect = byd_disconnect;
 psmouse->reconnect = byd_reconnect;
 psmouse->protocol_handler = byd_process_byte;
 psmouse->pktsize = 4;
 psmouse->resync_time = 0;

 __set_bit(INPUT_PROP_POINTER, dev->propbit);

 __set_bit(BTN_TOUCH, dev->keybit);
 __set_bit(BTN_TOOL_FINGER, dev->keybit);

 __set_bit(BTN_LEFT, dev->keybit);
 __set_bit(BTN_RIGHT, dev->keybit);
 __clear_bit(BTN_MIDDLE, dev->keybit);


 __set_bit(EV_ABS, dev->evbit);
 input_set_abs_params(dev, ABS_X, 0, BYD_PAD_WIDTH, 0, 0);
 input_set_abs_params(dev, ABS_Y, 0, BYD_PAD_HEIGHT, 0, 0);
 input_abs_set_res(dev, ABS_X, BYD_PAD_RESOLUTION);
 input_abs_set_res(dev, ABS_Y, BYD_PAD_RESOLUTION);

 __clear_bit(EV_REL, dev->evbit);
 __clear_bit(REL_X, dev->relbit);
 __clear_bit(REL_Y, dev->relbit);

 return 0;
}
