
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gpio_trig_data {int gpio; struct led_classdev* led; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct gpio_trig_data* kzalloc (int,int ) ;
 int led_set_trigger_data (struct led_classdev*,struct gpio_trig_data*) ;

__attribute__((used)) static int gpio_trig_activate(struct led_classdev *led)
{
 struct gpio_trig_data *gpio_data;

 gpio_data = kzalloc(sizeof(*gpio_data), GFP_KERNEL);
 if (!gpio_data)
  return -ENOMEM;

 gpio_data->led = led;
 gpio_data->gpio = -ENOENT;

 led_set_trigger_data(led, gpio_data);

 return 0;
}
