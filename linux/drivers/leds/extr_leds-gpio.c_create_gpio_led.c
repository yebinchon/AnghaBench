
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct led_init_data {struct fwnode_handle* fwnode; } ;
struct TYPE_3__ {scalar_t__ name; int flags; int brightness; int blink_set; int brightness_set_blocking; int brightness_set; int default_trigger; } ;
struct gpio_led_data {TYPE_1__ cdev; int gpiod; scalar_t__ platform_gpio_blink_set; scalar_t__ blinking; int can_sleep; } ;
struct gpio_led {scalar_t__ default_state; scalar_t__ name; scalar_t__ retain_state_shutdown; scalar_t__ panic_indicator; int retain_state_suspended; int default_trigger; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ gpio_blink_set_t ;


 scalar_t__ LEDS_GPIO_DEFSTATE_KEEP ;
 scalar_t__ LEDS_GPIO_DEFSTATE_ON ;
 int LED_CORE_SUSPENDRESUME ;
 int LED_FULL ;
 int LED_OFF ;
 int LED_PANIC_INDICATOR ;
 int LED_RETAIN_AT_SHUTDOWN ;
 int devm_led_classdev_register (struct device*,TYPE_1__*) ;
 int devm_led_classdev_register_ext (struct device*,TYPE_1__*,struct led_init_data*) ;
 int gpio_blink_set ;
 int gpio_led_set ;
 int gpio_led_set_blocking ;
 int gpiod_cansleep (int ) ;
 int gpiod_direction_output (int ,int) ;
 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int create_gpio_led(const struct gpio_led *template,
 struct gpio_led_data *led_dat, struct device *parent,
 struct fwnode_handle *fwnode, gpio_blink_set_t blink_set)
{
 struct led_init_data init_data = {};
 int ret, state;

 led_dat->cdev.default_trigger = template->default_trigger;
 led_dat->can_sleep = gpiod_cansleep(led_dat->gpiod);
 if (!led_dat->can_sleep)
  led_dat->cdev.brightness_set = gpio_led_set;
 else
  led_dat->cdev.brightness_set_blocking = gpio_led_set_blocking;
 led_dat->blinking = 0;
 if (blink_set) {
  led_dat->platform_gpio_blink_set = blink_set;
  led_dat->cdev.blink_set = gpio_blink_set;
 }
 if (template->default_state == LEDS_GPIO_DEFSTATE_KEEP) {
  state = gpiod_get_value_cansleep(led_dat->gpiod);
  if (state < 0)
   return state;
 } else {
  state = (template->default_state == LEDS_GPIO_DEFSTATE_ON);
 }
 led_dat->cdev.brightness = state ? LED_FULL : LED_OFF;
 if (!template->retain_state_suspended)
  led_dat->cdev.flags |= LED_CORE_SUSPENDRESUME;
 if (template->panic_indicator)
  led_dat->cdev.flags |= LED_PANIC_INDICATOR;
 if (template->retain_state_shutdown)
  led_dat->cdev.flags |= LED_RETAIN_AT_SHUTDOWN;

 ret = gpiod_direction_output(led_dat->gpiod, state);
 if (ret < 0)
  return ret;

 if (template->name) {
  led_dat->cdev.name = template->name;
  ret = devm_led_classdev_register(parent, &led_dat->cdev);
 } else {
  init_data.fwnode = fwnode;
  ret = devm_led_classdev_register_ext(parent, &led_dat->cdev,
           &init_data);
 }

 return ret;
}
