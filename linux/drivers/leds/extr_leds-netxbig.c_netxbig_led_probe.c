
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct netxbig_led_platform_data {int num_leds; int * leds; int gpio_ext; } ;
struct netxbig_led_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int create_netxbig_led (struct platform_device*,struct netxbig_led_platform_data*,struct netxbig_led_data*,int *) ;
 struct netxbig_led_data* devm_kcalloc (int *,int,int,int ) ;
 struct netxbig_led_platform_data* devm_kzalloc (int *,int,int ) ;
 int gpio_ext_init (struct platform_device*,int ) ;
 int netxbig_leds_get_of_pdata (int *,struct netxbig_led_platform_data*) ;

__attribute__((used)) static int netxbig_led_probe(struct platform_device *pdev)
{
 struct netxbig_led_platform_data *pdata;
 struct netxbig_led_data *leds_data;
 int i;
 int ret;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;
 ret = netxbig_leds_get_of_pdata(&pdev->dev, pdata);
 if (ret)
  return ret;

 leds_data = devm_kcalloc(&pdev->dev,
     pdata->num_leds, sizeof(*leds_data),
     GFP_KERNEL);
 if (!leds_data)
  return -ENOMEM;

 ret = gpio_ext_init(pdev, pdata->gpio_ext);
 if (ret < 0)
  return ret;

 for (i = 0; i < pdata->num_leds; i++) {
  ret = create_netxbig_led(pdev, pdata,
      &leds_data[i], &pdata->leds[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
