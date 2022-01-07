
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mlxreg_led_priv_data {struct mlxreg_core_platform_data* pdata; struct platform_device* pdev; int access_lock; } ;
struct mlxreg_core_platform_data {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct mlxreg_core_platform_data* dev_get_platdata (int *) ;
 struct mlxreg_led_priv_data* devm_kzalloc (int *,int,int ) ;
 int mlxreg_led_config (struct mlxreg_led_priv_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int mlxreg_led_probe(struct platform_device *pdev)
{
 struct mlxreg_core_platform_data *led_pdata;
 struct mlxreg_led_priv_data *priv;

 led_pdata = dev_get_platdata(&pdev->dev);
 if (!led_pdata) {
  dev_err(&pdev->dev, "Failed to get platform data.\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->access_lock);
 priv->pdev = pdev;
 priv->pdata = led_pdata;

 return mlxreg_led_config(priv);
}
