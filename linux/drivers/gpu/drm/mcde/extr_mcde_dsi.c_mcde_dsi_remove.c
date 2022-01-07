
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mcde_dsi {int dsi_host; } ;


 int component_del (int *,int *) ;
 int mcde_dsi_component_ops ;
 int mipi_dsi_host_unregister (int *) ;
 struct mcde_dsi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mcde_dsi_remove(struct platform_device *pdev)
{
 struct mcde_dsi *d = platform_get_drvdata(pdev);

 component_del(&pdev->dev, &mcde_dsi_component_ops);
 mipi_dsi_host_unregister(&d->dsi_host);

 return 0;
}
