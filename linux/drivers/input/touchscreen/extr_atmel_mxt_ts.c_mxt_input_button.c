
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxt_data {int t19_num_keys; scalar_t__* t19_keymap; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;


 int BIT (int) ;
 scalar_t__ KEY_RESERVED ;
 int input_report_key (struct input_dev*,scalar_t__,int) ;

__attribute__((used)) static void mxt_input_button(struct mxt_data *data, u8 *message)
{
 struct input_dev *input = data->input_dev;
 int i;

 for (i = 0; i < data->t19_num_keys; i++) {
  if (data->t19_keymap[i] == KEY_RESERVED)
   continue;


  input_report_key(input, data->t19_keymap[i],
     !(message[1] & BIT(i)));
 }
}
