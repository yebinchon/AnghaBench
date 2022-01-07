
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_leds_priv {int num_leds; struct gpio_led_data* leds; } ;
struct gpio_led_platform_data {int num_leds; int gpio_blink_set; struct gpio_led* leds; } ;
struct gpio_led_data {struct gpio_leds_priv* gpiod; } ;
struct gpio_led {int name; int gpio; struct gpio_leds_priv* gpiod; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct gpio_leds_priv*) ;
 int PTR_ERR (struct gpio_leds_priv*) ;
 int create_gpio_led (struct gpio_led const*,struct gpio_led_data*,int *,int *,int ) ;
 struct gpio_led_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ,int ) ;
 struct gpio_leds_priv* devm_kzalloc (int *,int ,int ) ;
 struct gpio_leds_priv* gpio_led_get_gpiod (int *,int,struct gpio_led const*) ;
 struct gpio_leds_priv* gpio_leds_create (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_leds_priv*) ;
 int sizeof_gpio_leds_priv (int) ;

__attribute__((used)) static int gpio_led_probe(struct platform_device *pdev)
{
 struct gpio_led_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct gpio_leds_priv *priv;
 int i, ret = 0;

 if (pdata && pdata->num_leds) {
  priv = devm_kzalloc(&pdev->dev,
    sizeof_gpio_leds_priv(pdata->num_leds),
     GFP_KERNEL);
  if (!priv)
   return -ENOMEM;

  priv->num_leds = pdata->num_leds;
  for (i = 0; i < priv->num_leds; i++) {
   const struct gpio_led *template = &pdata->leds[i];
   struct gpio_led_data *led_dat = &priv->leds[i];

   if (template->gpiod)
    led_dat->gpiod = template->gpiod;
   else
    led_dat->gpiod =
     gpio_led_get_gpiod(&pdev->dev,
          i, template);
   if (IS_ERR(led_dat->gpiod)) {
    dev_info(&pdev->dev, "Skipping unavailable LED gpio %d (%s)\n",
      template->gpio, template->name);
    continue;
   }

   ret = create_gpio_led(template, led_dat,
           &pdev->dev, ((void*)0),
           pdata->gpio_blink_set);
   if (ret < 0)
    return ret;
  }
 } else {
  priv = gpio_leds_create(pdev);
  if (IS_ERR(priv))
   return PTR_ERR(priv);
 }

 platform_set_drvdata(pdev, priv);

 return 0;
}
