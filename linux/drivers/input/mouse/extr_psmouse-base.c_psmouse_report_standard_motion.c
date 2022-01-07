
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;


 int REL_X ;
 int REL_Y ;
 int input_report_rel (struct input_dev*,int ,int) ;

void psmouse_report_standard_motion(struct input_dev *dev, u8 *packet)
{
 int x, y;

 x = packet[1] ? packet[1] - ((packet[0] << 4) & 0x100) : 0;
 y = packet[2] ? packet[2] - ((packet[0] << 3) & 0x100) : 0;

 input_report_rel(dev, REL_X, x);
 input_report_rel(dev, REL_Y, -y);
}
