
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hix5hd2_i2c_priv {int dev; int adap; } ;


 int i2c_del_adapter (int *) ;
 struct hix5hd2_i2c_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_set_suspended (int ) ;

__attribute__((used)) static int hix5hd2_i2c_remove(struct platform_device *pdev)
{
 struct hix5hd2_i2c_priv *priv = platform_get_drvdata(pdev);

 i2c_del_adapter(&priv->adap);
 pm_runtime_disable(priv->dev);
 pm_runtime_set_suspended(priv->dev);

 return 0;
}
