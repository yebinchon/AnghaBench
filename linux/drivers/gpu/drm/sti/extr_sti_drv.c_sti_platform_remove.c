
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_master_del (int *,int *) ;
 int sti_ops ;

__attribute__((used)) static int sti_platform_remove(struct platform_device *pdev)
{
 component_master_del(&pdev->dev, &sti_ops);

 return 0;
}
