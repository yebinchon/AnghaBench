
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {unsigned char* data; int * tool; struct input_dev* pad_input; } ;
struct input_dev {int dummy; } ;


 int ABS_MISC ;
 int EV_MSC ;
 int MSC_SERIAL ;
 int PAD_DEVICE_ID ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int wacom_report_numbered_buttons (struct input_dev*,int,int) ;

__attribute__((used)) static void wacom_intuos_gen3_bt_pad(struct wacom_wac *wacom)
{
 struct input_dev *pad_input = wacom->pad_input;
 unsigned char *data = wacom->data;

 int buttons = data[44];

 wacom_report_numbered_buttons(pad_input, 4, buttons);

 input_report_key(pad_input, wacom->tool[1], buttons ? 1 : 0);
 input_report_abs(pad_input, ABS_MISC, buttons ? PAD_DEVICE_ID : 0);
 input_event(pad_input, EV_MSC, MSC_SERIAL, 0xffffffff);

 input_sync(pad_input);
}
