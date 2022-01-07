
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_mu_priv {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct imx_mu_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int imx_mu_remove(struct platform_device *pdev)
{
 struct imx_mu_priv *priv = platform_get_drvdata(pdev);

 clk_disable_unprepare(priv->clk);

 return 0;
}
