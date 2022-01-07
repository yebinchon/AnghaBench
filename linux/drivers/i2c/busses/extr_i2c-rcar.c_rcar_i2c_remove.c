
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int flags; int adap; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ID_P_PM_BLOCKED ;
 int i2c_del_adapter (int *) ;
 struct rcar_i2c_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int rcar_i2c_release_dma (struct rcar_i2c_priv*) ;

__attribute__((used)) static int rcar_i2c_remove(struct platform_device *pdev)
{
 struct rcar_i2c_priv *priv = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;

 i2c_del_adapter(&priv->adap);
 rcar_i2c_release_dma(priv);
 if (priv->flags & ID_P_PM_BLOCKED)
  pm_runtime_put(dev);
 pm_runtime_disable(dev);

 return 0;
}
