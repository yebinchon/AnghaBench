
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_master_del (int *,int *) ;
 int vc4_drm_ops ;

__attribute__((used)) static int vc4_platform_drm_remove(struct platform_device *pdev)
{
 component_master_del(&pdev->dev, &vc4_drm_ops);

 return 0;
}
