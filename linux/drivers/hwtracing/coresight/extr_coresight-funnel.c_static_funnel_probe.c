
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int funnel_probe (int *,int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_active (int *) ;

__attribute__((used)) static int static_funnel_probe(struct platform_device *pdev)
{
 int ret;

 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);


 ret = funnel_probe(&pdev->dev, ((void*)0));

 if (ret) {
  pm_runtime_put_noidle(&pdev->dev);
  pm_runtime_disable(&pdev->dev);
 }

 return ret;
}
