
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_led_priv {int lock; } ;
struct platform_device {int dummy; } ;


 int mutex_destroy (int *) ;
 struct sc27xx_led_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sc27xx_led_remove(struct platform_device *pdev)
{
 struct sc27xx_led_priv *priv = platform_get_drvdata(pdev);

 mutex_destroy(&priv->lock);
 return 0;
}
