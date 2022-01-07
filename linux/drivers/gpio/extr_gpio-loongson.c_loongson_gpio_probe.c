
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gpio_chip {char* label; int direction_output; int direction_input; int set; int get; int ngpio; scalar_t__ base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LOONGSON_N_GPIO ;
 struct gpio_chip* devm_kzalloc (struct device*,int,int ) ;
 int gpiochip_add_data (struct gpio_chip*,int *) ;
 int loongson_gpio_direction_input ;
 int loongson_gpio_direction_output ;
 int loongson_gpio_get_value ;
 int loongson_gpio_set_value ;

__attribute__((used)) static int loongson_gpio_probe(struct platform_device *pdev)
{
 struct gpio_chip *gc;
 struct device *dev = &pdev->dev;

 gc = devm_kzalloc(dev, sizeof(*gc), GFP_KERNEL);
 if (!gc)
  return -ENOMEM;

 gc->label = "loongson-gpio-chip";
 gc->base = 0;
 gc->ngpio = LOONGSON_N_GPIO;
 gc->get = loongson_gpio_get_value;
 gc->set = loongson_gpio_set_value;
 gc->direction_input = loongson_gpio_direction_input;
 gc->direction_output = loongson_gpio_direction_output;

 return gpiochip_add_data(gc, ((void*)0));
}
