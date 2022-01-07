
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_master_del (int *,int *) ;
 int komeda_master_ops ;

__attribute__((used)) static int komeda_platform_remove(struct platform_device *pdev)
{
 component_master_del(&pdev->dev, &komeda_master_ops);
 return 0;
}
