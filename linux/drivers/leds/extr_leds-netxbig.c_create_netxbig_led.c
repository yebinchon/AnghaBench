
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct netxbig_led_platform_data {int num_timer; int timer; int gpio_ext; } ;
struct TYPE_2__ {int groups; int flags; int max_brightness; int brightness; int brightness_set; int blink_set; int default_trigger; int name; } ;
struct netxbig_led_data {scalar_t__* mode_val; TYPE_1__ cdev; int num_timer; int timer; int bright_addr; int mode_addr; scalar_t__ sata; int gpio_ext; int lock; } ;
struct netxbig_led {scalar_t__* mode_val; int bright_addr; int mode_addr; int bright_max; int default_trigger; int name; } ;


 int LED_CORE_SUSPENDRESUME ;
 int LED_OFF ;
 scalar_t__ NETXBIG_LED_INVALID_MODE ;
 size_t NETXBIG_LED_SATA ;
 int devm_led_classdev_register (int *,TYPE_1__*) ;
 int netxbig_led_blink_set ;
 int netxbig_led_groups ;
 int netxbig_led_set ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int create_netxbig_led(struct platform_device *pdev,
         struct netxbig_led_platform_data *pdata,
         struct netxbig_led_data *led_dat,
         const struct netxbig_led *template)
{
 spin_lock_init(&led_dat->lock);
 led_dat->gpio_ext = pdata->gpio_ext;
 led_dat->cdev.name = template->name;
 led_dat->cdev.default_trigger = template->default_trigger;
 led_dat->cdev.blink_set = netxbig_led_blink_set;
 led_dat->cdev.brightness_set = netxbig_led_set;
 led_dat->sata = 0;
 led_dat->cdev.brightness = LED_OFF;
 led_dat->cdev.max_brightness = template->bright_max;
 led_dat->cdev.flags |= LED_CORE_SUSPENDRESUME;
 led_dat->mode_addr = template->mode_addr;
 led_dat->mode_val = template->mode_val;
 led_dat->bright_addr = template->bright_addr;
 led_dat->timer = pdata->timer;
 led_dat->num_timer = pdata->num_timer;




 if (led_dat->mode_val[NETXBIG_LED_SATA] != NETXBIG_LED_INVALID_MODE)
  led_dat->cdev.groups = netxbig_led_groups;

 return devm_led_classdev_register(&pdev->dev, &led_dat->cdev);
}
