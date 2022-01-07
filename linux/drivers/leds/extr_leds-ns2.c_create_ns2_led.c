
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int brightness; int brightness_set; int brightness_set_blocking; int groups; int flags; int * blink_set; int default_trigger; int name; } ;
struct ns2_led_data {int can_sleep; int sata; TYPE_1__ cdev; int num_modes; int modval; int slow; int cmd; int rw_lock; } ;
struct ns2_led {int num_modes; int modval; int slow; int cmd; int default_trigger; int name; } ;
typedef enum ns2_led_modes { ____Placeholder_ns2_led_modes } ns2_led_modes ;


 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int LED_CORE_SUSPENDRESUME ;
 int LED_FULL ;
 int LED_OFF ;
 int NS_V2_LED_OFF ;
 int NS_V2_LED_SATA ;
 int dev_err (int *,char*,int ) ;
 int devm_gpio_request_one (int *,int ,int ,int ) ;
 int gpio_cansleep (int ) ;
 scalar_t__ gpio_get_value_cansleep (int ) ;
 int led_classdev_register (int *,TYPE_1__*) ;
 int ns2_led_get_mode (struct ns2_led_data*,int*) ;
 int ns2_led_groups ;
 int ns2_led_set ;
 int ns2_led_set_blocking ;
 int rwlock_init (int *) ;

__attribute__((used)) static int
create_ns2_led(struct platform_device *pdev, struct ns2_led_data *led_dat,
        const struct ns2_led *template)
{
 int ret;
 enum ns2_led_modes mode;

 ret = devm_gpio_request_one(&pdev->dev, template->cmd,
   gpio_get_value_cansleep(template->cmd) ?
   GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW,
   template->name);
 if (ret) {
  dev_err(&pdev->dev, "%s: failed to setup command GPIO\n",
   template->name);
  return ret;
 }

 ret = devm_gpio_request_one(&pdev->dev, template->slow,
   gpio_get_value_cansleep(template->slow) ?
   GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW,
   template->name);
 if (ret) {
  dev_err(&pdev->dev, "%s: failed to setup slow GPIO\n",
   template->name);
  return ret;
 }

 rwlock_init(&led_dat->rw_lock);

 led_dat->cdev.name = template->name;
 led_dat->cdev.default_trigger = template->default_trigger;
 led_dat->cdev.blink_set = ((void*)0);
 led_dat->cdev.flags |= LED_CORE_SUSPENDRESUME;
 led_dat->cdev.groups = ns2_led_groups;
 led_dat->cmd = template->cmd;
 led_dat->slow = template->slow;
 led_dat->can_sleep = gpio_cansleep(led_dat->cmd) |
    gpio_cansleep(led_dat->slow);
 if (led_dat->can_sleep)
  led_dat->cdev.brightness_set_blocking = ns2_led_set_blocking;
 else
  led_dat->cdev.brightness_set = ns2_led_set;
 led_dat->modval = template->modval;
 led_dat->num_modes = template->num_modes;

 ret = ns2_led_get_mode(led_dat, &mode);
 if (ret < 0)
  return ret;


 led_dat->sata = (mode == NS_V2_LED_SATA) ? 1 : 0;
 led_dat->cdev.brightness =
  (mode == NS_V2_LED_OFF) ? LED_OFF : LED_FULL;

 ret = led_classdev_register(&pdev->dev, &led_dat->cdev);
 if (ret < 0)
  return ret;

 return 0;
}
