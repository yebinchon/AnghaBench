
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int keybit; int propbit; } ;
struct elantech_data {int info; } ;


 int BTN_RIGHT ;
 int INPUT_PROP_BUTTONPAD ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 scalar_t__ elantech_is_buttonpad (int *) ;

__attribute__((used)) static void elantech_set_buttonpad_prop(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;

 if (elantech_is_buttonpad(&etd->info)) {
  __set_bit(INPUT_PROP_BUTTONPAD, dev->propbit);
  __clear_bit(BTN_RIGHT, dev->keybit);
 }
}
