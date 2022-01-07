
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_del (int *,int *) ;
 int gpu_ops ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int etnaviv_gpu_platform_remove(struct platform_device *pdev)
{
 component_del(&pdev->dev, &gpu_ops);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
