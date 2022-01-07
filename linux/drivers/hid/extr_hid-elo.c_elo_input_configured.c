
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int absbit; int keybit; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;


 int ABS_PRESSURE ;
 int BTN_LEFT ;
 int BTN_TOUCH ;
 int clear_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int elo_input_configured(struct hid_device *hdev,
  struct hid_input *hidinput)
{
 struct input_dev *input = hidinput->input;






 clear_bit(BTN_LEFT, input->keybit);
 set_bit(BTN_TOUCH, input->keybit);
 set_bit(ABS_PRESSURE, input->absbit);
 input_set_abs_params(input, ABS_PRESSURE, 0, 256, 0, 0);

 return 0;
}
