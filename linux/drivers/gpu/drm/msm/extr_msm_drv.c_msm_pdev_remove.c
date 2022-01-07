
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_master_del (int *,int *) ;
 int msm_drm_ops ;
 int of_platform_depopulate (int *) ;

__attribute__((used)) static int msm_pdev_remove(struct platform_device *pdev)
{
 component_master_del(&pdev->dev, &msm_drm_ops);
 of_platform_depopulate(&pdev->dev);

 return 0;
}
