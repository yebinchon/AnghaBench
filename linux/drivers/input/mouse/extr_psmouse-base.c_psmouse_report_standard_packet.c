
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;


 int psmouse_report_standard_buttons (struct input_dev*,int ) ;
 int psmouse_report_standard_motion (struct input_dev*,int *) ;

void psmouse_report_standard_packet(struct input_dev *dev, u8 *packet)
{
 psmouse_report_standard_buttons(dev, packet[0]);
 psmouse_report_standard_motion(dev, packet);
}
