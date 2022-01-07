
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int armada_master_ops ;
 int component_master_del (int *,int *) ;

__attribute__((used)) static int armada_drm_remove(struct platform_device *pdev)
{
 component_master_del(&pdev->dev, &armada_master_ops);
 return 0;
}
