
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct led_pwm_priv {int dummy; } ;
struct led_pwm_platform_data {int num_leds; int * leds; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct led_pwm_platform_data* dev_get_platdata (int *) ;
 int device_get_child_node_count (int *) ;
 struct led_pwm_priv* devm_kzalloc (int *,int ,int ) ;
 int led_pwm_add (int *,struct led_pwm_priv*,int *,int *) ;
 int led_pwm_create_fwnode (int *,struct led_pwm_priv*) ;
 int leds ;
 int platform_set_drvdata (struct platform_device*,struct led_pwm_priv*) ;
 int struct_size (struct led_pwm_priv*,int ,int) ;

__attribute__((used)) static int led_pwm_probe(struct platform_device *pdev)
{
 struct led_pwm_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct led_pwm_priv *priv;
 int count, i;
 int ret = 0;

 if (pdata)
  count = pdata->num_leds;
 else
  count = device_get_child_node_count(&pdev->dev);

 if (!count)
  return -EINVAL;

 priv = devm_kzalloc(&pdev->dev, struct_size(priv, leds, count),
       GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 if (pdata) {
  for (i = 0; i < count; i++) {
   ret = led_pwm_add(&pdev->dev, priv, &pdata->leds[i],
       ((void*)0));
   if (ret)
    break;
  }
 } else {
  ret = led_pwm_create_fwnode(&pdev->dev, priv);
 }

 if (ret)
  return ret;

 platform_set_drvdata(pdev, priv);

 return 0;
}
