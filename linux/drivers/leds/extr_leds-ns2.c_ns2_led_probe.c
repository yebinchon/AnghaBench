
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ns2_led_priv {int num_leds; int * leds_data; } ;
struct ns2_led_platform_data {int num_leds; int * leds; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int create_ns2_led (struct platform_device*,int *,int *) ;
 int delete_ns2_led (int *) ;
 struct ns2_led_platform_data* dev_get_platdata (int *) ;
 void* devm_kzalloc (int *,int,int ) ;
 int ns2_leds_get_of_pdata (int *,struct ns2_led_platform_data*) ;
 int platform_set_drvdata (struct platform_device*,struct ns2_led_priv*) ;
 int sizeof_ns2_led_priv (int) ;

__attribute__((used)) static int ns2_led_probe(struct platform_device *pdev)
{
 struct ns2_led_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct ns2_led_priv *priv;
 int i;
 int ret;
 if (!pdata)
  return -EINVAL;


 priv = devm_kzalloc(&pdev->dev,
       sizeof_ns2_led_priv(pdata->num_leds), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 priv->num_leds = pdata->num_leds;

 for (i = 0; i < priv->num_leds; i++) {
  ret = create_ns2_led(pdev, &priv->leds_data[i],
         &pdata->leds[i]);
  if (ret < 0) {
   for (i = i - 1; i >= 0; i--)
    delete_ns2_led(&priv->leds_data[i]);
   return ret;
  }
 }

 platform_set_drvdata(pdev, priv);

 return 0;
}
