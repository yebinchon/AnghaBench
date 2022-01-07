
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* dev; int * ops; } ;
struct vc4_dsi {TYPE_1__ dsi_host; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int component_add (struct device*,int *) ;
 int dev_set_drvdata (struct device*,struct vc4_dsi*) ;
 struct vc4_dsi* devm_kzalloc (struct device*,int,int ) ;
 int mipi_dsi_host_register (TYPE_1__*) ;
 int mipi_dsi_host_unregister (TYPE_1__*) ;
 int vc4_dsi_host_ops ;
 int vc4_dsi_ops ;

__attribute__((used)) static int vc4_dsi_dev_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct vc4_dsi *dsi;
 int ret;

 dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 if (!dsi)
  return -ENOMEM;
 dev_set_drvdata(dev, dsi);

 dsi->pdev = pdev;
 dsi->dsi_host.ops = &vc4_dsi_host_ops;
 dsi->dsi_host.dev = dev;
 mipi_dsi_host_register(&dsi->dsi_host);

 ret = component_add(&pdev->dev, &vc4_dsi_ops);
 if (ret) {
  mipi_dsi_host_unregister(&dsi->dsi_host);
  return ret;
 }

 return 0;
}
