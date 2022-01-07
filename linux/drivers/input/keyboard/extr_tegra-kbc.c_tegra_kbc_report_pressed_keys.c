
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int EV_MSC ;
 int MSC_SCAN ;
 int input_event (struct input_dev*,int ,int ,unsigned char) ;
 int input_report_key (struct input_dev*,unsigned short,int) ;

__attribute__((used)) static void tegra_kbc_report_pressed_keys(struct input_dev *input,
       unsigned char scancodes[],
       unsigned short keycodes[],
       unsigned int num_pressed_keys)
{
 unsigned int i;

 for (i = 0; i < num_pressed_keys; i++) {
  input_event(input, EV_MSC, MSC_SCAN, scancodes[i]);
  input_report_key(input, keycodes[i], 1);
 }
}
