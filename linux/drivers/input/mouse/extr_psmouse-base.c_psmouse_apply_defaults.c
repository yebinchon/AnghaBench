
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktsize; int * pt_deactivate; int * pt_activate; int * cleanup; int * disconnect; int * fast_reconnect; int * reconnect; int protocol_handler; int poll; int set_scale; int set_resolution; int set_rate; int * protocol; struct input_dev* dev; } ;
struct input_dev {int propbit; int mscbit; int absbit; int relbit; int keybit; int evbit; } ;


 int ABS_CNT ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int EV_CNT ;
 int EV_KEY ;
 int EV_REL ;
 int INPUT_PROP_POINTER ;
 int KEY_CNT ;
 int MSC_CNT ;
 int REL_CNT ;
 int REL_X ;
 int REL_Y ;
 int __set_bit (int ,int ) ;
 int bitmap_zero (int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int psmouse_poll ;
 int psmouse_process_byte ;
 int * psmouse_protocols ;
 int psmouse_set_rate ;
 int psmouse_set_resolution ;
 int psmouse_set_scale ;

__attribute__((used)) static void psmouse_apply_defaults(struct psmouse *psmouse)
{
 struct input_dev *input_dev = psmouse->dev;

 bitmap_zero(input_dev->evbit, EV_CNT);
 bitmap_zero(input_dev->keybit, KEY_CNT);
 bitmap_zero(input_dev->relbit, REL_CNT);
 bitmap_zero(input_dev->absbit, ABS_CNT);
 bitmap_zero(input_dev->mscbit, MSC_CNT);

 input_set_capability(input_dev, EV_KEY, BTN_LEFT);
 input_set_capability(input_dev, EV_KEY, BTN_RIGHT);

 input_set_capability(input_dev, EV_REL, REL_X);
 input_set_capability(input_dev, EV_REL, REL_Y);

 __set_bit(INPUT_PROP_POINTER, input_dev->propbit);

 psmouse->protocol = &psmouse_protocols[0];

 psmouse->set_rate = psmouse_set_rate;
 psmouse->set_resolution = psmouse_set_resolution;
 psmouse->set_scale = psmouse_set_scale;
 psmouse->poll = psmouse_poll;
 psmouse->protocol_handler = psmouse_process_byte;
 psmouse->pktsize = 3;
 psmouse->reconnect = ((void*)0);
 psmouse->fast_reconnect = ((void*)0);
 psmouse->disconnect = ((void*)0);
 psmouse->cleanup = ((void*)0);
 psmouse->pt_activate = ((void*)0);
 psmouse->pt_deactivate = ((void*)0);
}
