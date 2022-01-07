
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_service {int dummy; } ;
struct gpio_pin_info {int mask; int offset; } ;
struct gpio_generic_mux_config {int enable_output_from_mux; int mux_select; } ;
struct gpio {int dummy; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;


 int GFP_KERNEL ;
 int GPIO_ID_GENERIC ;
 int GPIO_MODE_OUTPUT ;
 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int GPIO_RESULT_OK ;
 int GPIO_SIGNAL_SOURCE_PASS_THROUGH_STEREO_SYNC ;
 int dal_gpio_close (struct gpio*) ;
 int dal_gpio_destroy_generic_mux (struct gpio**) ;
 struct gpio_pin_info dal_gpio_get_generic_pin_info (struct gpio_service*,int ,int ) ;
 int dal_gpio_open (struct gpio*,int ) ;
 struct gpio* dal_gpio_service_create_generic_mux (struct gpio_service*,int,int) ;
 int dal_mux_setup_config (struct gpio*,struct gpio_generic_mux_config*) ;
 int kfree (struct gpio_generic_mux_config*) ;
 struct gpio_generic_mux_config* kzalloc (int,int ) ;

bool dc_set_generic_gpio_for_stereo(bool enable,
  struct gpio_service *gpio_service)
{
 enum gpio_result gpio_result = GPIO_RESULT_NON_SPECIFIC_ERROR;
 struct gpio_pin_info pin_info;
 struct gpio *generic;
 struct gpio_generic_mux_config *config = kzalloc(sizeof(struct gpio_generic_mux_config),
      GFP_KERNEL);

 if (!config)
  return 0;
 pin_info = dal_gpio_get_generic_pin_info(gpio_service, GPIO_ID_GENERIC, 0);

 if (pin_info.mask == 0xFFFFFFFF || pin_info.offset == 0xFFFFFFFF) {
  kfree(config);
  return 0;
 } else {
  generic = dal_gpio_service_create_generic_mux(
   gpio_service,
   pin_info.offset,
   pin_info.mask);
 }

 if (!generic) {
  kfree(config);
  return 0;
 }

 gpio_result = dal_gpio_open(generic, GPIO_MODE_OUTPUT);

 config->enable_output_from_mux = enable;
 config->mux_select = GPIO_SIGNAL_SOURCE_PASS_THROUGH_STEREO_SYNC;

 if (gpio_result == GPIO_RESULT_OK)
  gpio_result = dal_mux_setup_config(generic, config);

 if (gpio_result == GPIO_RESULT_OK) {
  dal_gpio_close(generic);
  dal_gpio_destroy_generic_mux(&generic);
  kfree(config);
  return 1;
 } else {
  dal_gpio_close(generic);
  dal_gpio_destroy_generic_mux(&generic);
  kfree(config);
  return 0;
 }
}
