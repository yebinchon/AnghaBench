
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int DBG (char*) ;
 int component_del (int *,int *) ;
 int edp_ops ;

__attribute__((used)) static int edp_dev_remove(struct platform_device *pdev)
{
 DBG("");
 component_del(&pdev->dev, &edp_ops);
 return 0;
}
