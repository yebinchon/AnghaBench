
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function {int dev; int rmi_dev; } ;
struct TYPE_2__ {scalar_t__ buttonpad; scalar_t__ trackstick_buttons; } ;
struct rmi_device_platform_data {TYPE_1__ f30_data; } ;
struct input_dev {unsigned int* keycode; int keycodesize; int propbit; int keycodemax; } ;
struct f30_data {unsigned int* gpioled_key_map; int gpioled_count; int ctrl; struct input_dev* input; } ;


 unsigned int BTN_LEFT ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INPUT_PROP_BUTTONPAD ;
 int TRACKSTICK_RANGE_END ;
 int TRACKSTICK_RANGE_START ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 unsigned int* devm_kcalloc (int *,int,int,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int min_t (int ,int ,int) ;
 int rmi_f30_is_valid_button (int,int ) ;
 struct rmi_device_platform_data* rmi_get_platform_data (int ) ;
 int u8 ;

__attribute__((used)) static int rmi_f30_map_gpios(struct rmi_function *fn,
        struct f30_data *f30)
{
 const struct rmi_device_platform_data *pdata =
     rmi_get_platform_data(fn->rmi_dev);
 struct input_dev *input = f30->input;
 unsigned int button = BTN_LEFT;
 unsigned int trackstick_button = BTN_LEFT;
 bool button_mapped = 0;
 int i;
 int button_count = min_t(u8, f30->gpioled_count, TRACKSTICK_RANGE_END);

 f30->gpioled_key_map = devm_kcalloc(&fn->dev,
         button_count,
         sizeof(f30->gpioled_key_map[0]),
         GFP_KERNEL);
 if (!f30->gpioled_key_map) {
  dev_err(&fn->dev, "Failed to allocate gpioled map memory.\n");
  return -ENOMEM;
 }

 for (i = 0; i < button_count; i++) {
  if (!rmi_f30_is_valid_button(i, f30->ctrl))
   continue;

  if (pdata->f30_data.trackstick_buttons &&
      i >= TRACKSTICK_RANGE_START && i < TRACKSTICK_RANGE_END) {
   f30->gpioled_key_map[i] = trackstick_button++;
  } else if (!pdata->f30_data.buttonpad || !button_mapped) {
   f30->gpioled_key_map[i] = button;
   input_set_capability(input, EV_KEY, button++);
   button_mapped = 1;
  }
 }

 input->keycode = f30->gpioled_key_map;
 input->keycodesize = sizeof(f30->gpioled_key_map[0]);
 input->keycodemax = f30->gpioled_count;






 if (pdata->f30_data.buttonpad || (button - BTN_LEFT == 1))
  __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);

 return 0;
}
