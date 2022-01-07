
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int mod_clk; int host; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int clk_rate_exclusive_put (int ) ;
 int component_del (struct device*,int *) ;
 struct sun6i_dsi* dev_get_drvdata (struct device*) ;
 int mipi_dsi_host_unregister (int *) ;
 int pm_runtime_disable (struct device*) ;
 int sun6i_dsi_ops ;

__attribute__((used)) static int sun6i_dsi_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sun6i_dsi *dsi = dev_get_drvdata(dev);

 component_del(&pdev->dev, &sun6i_dsi_ops);
 mipi_dsi_host_unregister(&dsi->host);
 pm_runtime_disable(dev);
 clk_rate_exclusive_put(dsi->mod_clk);

 return 0;
}
