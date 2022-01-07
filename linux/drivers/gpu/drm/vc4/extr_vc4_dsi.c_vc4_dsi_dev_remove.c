
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dsi {int dsi_host; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int component_del (struct device*,int *) ;
 struct vc4_dsi* dev_get_drvdata (struct device*) ;
 int mipi_dsi_host_unregister (int *) ;
 int vc4_dsi_ops ;

__attribute__((used)) static int vc4_dsi_dev_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct vc4_dsi *dsi = dev_get_drvdata(dev);

 component_del(&pdev->dev, &vc4_dsi_ops);
 mipi_dsi_host_unregister(&dsi->dsi_host);

 return 0;
}
