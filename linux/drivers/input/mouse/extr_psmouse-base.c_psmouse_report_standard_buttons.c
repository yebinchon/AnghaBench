
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;


 int BIT (int) ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int input_report_key (struct input_dev*,int ,int) ;

void psmouse_report_standard_buttons(struct input_dev *dev, u8 buttons)
{
 input_report_key(dev, BTN_LEFT, buttons & BIT(0));
 input_report_key(dev, BTN_MIDDLE, buttons & BIT(2));
 input_report_key(dev, BTN_RIGHT, buttons & BIT(1));
}
