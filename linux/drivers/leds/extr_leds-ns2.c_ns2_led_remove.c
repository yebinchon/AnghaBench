
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ns2_led_priv {int num_leds; int * leds_data; } ;


 int delete_ns2_led (int *) ;
 struct ns2_led_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ns2_led_remove(struct platform_device *pdev)
{
 int i;
 struct ns2_led_priv *priv;

 priv = platform_get_drvdata(pdev);

 for (i = 0; i < priv->num_leds; i++)
  delete_ns2_led(&priv->leds_data[i]);

 return 0;
}
