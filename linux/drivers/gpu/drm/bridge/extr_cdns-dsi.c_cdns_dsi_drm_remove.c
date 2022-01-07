
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cdns_dsi {int base; } ;


 int mipi_dsi_host_unregister (int *) ;
 struct cdns_dsi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int cdns_dsi_drm_remove(struct platform_device *pdev)
{
 struct cdns_dsi *dsi = platform_get_drvdata(pdev);

 mipi_dsi_host_unregister(&dsi->base);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
