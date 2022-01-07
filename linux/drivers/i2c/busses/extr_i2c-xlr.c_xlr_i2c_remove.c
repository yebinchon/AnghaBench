
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_i2c_private {int clk; int adap; } ;
struct platform_device {int dummy; } ;


 int clk_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct xlr_i2c_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xlr_i2c_remove(struct platform_device *pdev)
{
 struct xlr_i2c_private *priv;

 priv = platform_get_drvdata(pdev);
 i2c_del_adapter(&priv->adap);
 clk_unprepare(priv->clk);

 return 0;
}
