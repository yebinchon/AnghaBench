
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synusb {int* data; struct input_dev* input; } ;
struct input_dev {int dummy; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int input_report_key (struct input_dev*,int ,int) ;

__attribute__((used)) static void synusb_report_buttons(struct synusb *synusb)
{
 struct input_dev *input_dev = synusb->input;

 input_report_key(input_dev, BTN_LEFT, synusb->data[1] & 0x04);
 input_report_key(input_dev, BTN_RIGHT, synusb->data[1] & 0x01);
 input_report_key(input_dev, BTN_MIDDLE, synusb->data[1] & 0x02);
}
