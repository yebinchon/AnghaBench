
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mlxreg_led_priv_data {int access_lock; } ;


 struct mlxreg_led_priv_data* dev_get_drvdata (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int mlxreg_led_remove(struct platform_device *pdev)
{
 struct mlxreg_led_priv_data *priv = dev_get_drvdata(&pdev->dev);

 mutex_destroy(&priv->access_lock);

 return 0;
}
