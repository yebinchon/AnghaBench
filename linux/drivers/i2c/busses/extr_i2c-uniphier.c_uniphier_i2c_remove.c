
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_i2c_priv {int clk; int adap; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct uniphier_i2c_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int uniphier_i2c_remove(struct platform_device *pdev)
{
 struct uniphier_i2c_priv *priv = platform_get_drvdata(pdev);

 i2c_del_adapter(&priv->adap);
 clk_disable_unprepare(priv->clk);

 return 0;
}
