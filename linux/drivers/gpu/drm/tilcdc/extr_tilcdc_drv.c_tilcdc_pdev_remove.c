
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_master_del (int *,int *) ;
 int platform_get_drvdata (struct platform_device*) ;
 int tilcdc_comp_ops ;
 int tilcdc_fini (int ) ;
 int tilcdc_get_external_components (int *,int *) ;

__attribute__((used)) static int tilcdc_pdev_remove(struct platform_device *pdev)
{
 int ret;

 ret = tilcdc_get_external_components(&pdev->dev, ((void*)0));
 if (ret < 0)
  return ret;
 else if (ret == 0)
  tilcdc_fini(platform_get_drvdata(pdev));
 else
  component_master_del(&pdev->dev, &tilcdc_comp_ops);

 return 0;
}
