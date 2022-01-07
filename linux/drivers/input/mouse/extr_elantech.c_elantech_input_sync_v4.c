
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct elantech_data {int info; } ;


 int BTN_LEFT ;
 scalar_t__ elantech_is_buttonpad (int *) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int psmouse_report_standard_buttons (struct input_dev*,unsigned char) ;

__attribute__((used)) static void elantech_input_sync_v4(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;


 if (elantech_is_buttonpad(&etd->info))
  input_report_key(dev, BTN_LEFT, packet[0] & 0x03);
 else
  psmouse_report_standard_buttons(dev, packet[0]);

 input_mt_report_pointer_emulation(dev, 1);
 input_sync(dev);
}
