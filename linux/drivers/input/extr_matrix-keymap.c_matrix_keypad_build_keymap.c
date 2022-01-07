
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct matrix_keymap_data {int keymap_size; unsigned int* keymap; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {unsigned short* keycode; int keycodesize; size_t keycodemax; int keybit; int evbit; TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int KEY_RESERVED ;
 scalar_t__ WARN_ON (int) ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int dev_err (int ,char*) ;
 unsigned short* devm_kcalloc (int ,size_t,int,int ) ;
 unsigned int get_count_order (unsigned int) ;
 int matrix_keypad_map_key (struct input_dev*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int matrix_keypad_parse_keymap (char const*,unsigned int,unsigned int,struct input_dev*) ;

int matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
          const char *keymap_name,
          unsigned int rows, unsigned int cols,
          unsigned short *keymap,
          struct input_dev *input_dev)
{
 unsigned int row_shift = get_count_order(cols);
 size_t max_keys = rows << row_shift;
 int i;
 int error;

 if (WARN_ON(!input_dev->dev.parent))
  return -EINVAL;

 if (!keymap) {
  keymap = devm_kcalloc(input_dev->dev.parent,
          max_keys, sizeof(*keymap),
          GFP_KERNEL);
  if (!keymap) {
   dev_err(input_dev->dev.parent,
    "Unable to allocate memory for keymap");
   return -ENOMEM;
  }
 }

 input_dev->keycode = keymap;
 input_dev->keycodesize = sizeof(*keymap);
 input_dev->keycodemax = max_keys;

 __set_bit(EV_KEY, input_dev->evbit);

 if (keymap_data) {
  for (i = 0; i < keymap_data->keymap_size; i++) {
   unsigned int key = keymap_data->keymap[i];

   if (!matrix_keypad_map_key(input_dev, rows, cols,
         row_shift, key))
    return -EINVAL;
  }
 } else {
  error = matrix_keypad_parse_keymap(keymap_name, rows, cols,
         input_dev);
  if (error)
   return error;
 }

 __clear_bit(KEY_RESERVED, input_dev->keybit);

 return 0;
}
