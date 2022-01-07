
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_device {TYPE_1__* descs; int dev; } ;
struct gpio_desc {int dummy; } ;
struct gpio_chip {int ngpio; int * names; struct gpio_device* gpiodev; } ;
struct TYPE_2__ {int name; } ;


 int dev_warn (int *,char*,int ) ;
 struct gpio_desc* gpio_name_to_desc (int ) ;

__attribute__((used)) static int gpiochip_set_desc_names(struct gpio_chip *gc)
{
 struct gpio_device *gdev = gc->gpiodev;
 int i;

 if (!gc->names)
  return 0;


 for (i = 0; i != gc->ngpio; ++i) {
  struct gpio_desc *gpio;

  gpio = gpio_name_to_desc(gc->names[i]);
  if (gpio)
   dev_warn(&gdev->dev,
     "Detected name collision for GPIO name '%s'\n",
     gc->names[i]);
 }


 for (i = 0; i != gc->ngpio; ++i)
  gdev->descs[i].name = gc->names[i];

 return 0;
}
