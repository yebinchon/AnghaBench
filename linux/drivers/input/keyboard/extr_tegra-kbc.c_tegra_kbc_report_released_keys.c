
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int input_report_key (struct input_dev*,unsigned short,int ) ;

__attribute__((used)) static void tegra_kbc_report_released_keys(struct input_dev *input,
        unsigned short old_keycodes[],
        unsigned int old_num_keys,
        unsigned short new_keycodes[],
        unsigned int new_num_keys)
{
 unsigned int i, j;

 for (i = 0; i < old_num_keys; i++) {
  for (j = 0; j < new_num_keys; j++)
   if (old_keycodes[i] == new_keycodes[j])
    break;

  if (j == new_num_keys)
   input_report_key(input, old_keycodes[i], 0);
 }
}
