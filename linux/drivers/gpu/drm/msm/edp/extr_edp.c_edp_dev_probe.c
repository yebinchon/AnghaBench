
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int DBG (char*) ;
 int component_add (int *,int *) ;
 int edp_ops ;

__attribute__((used)) static int edp_dev_probe(struct platform_device *pdev)
{
 DBG("");
 return component_add(&pdev->dev, &edp_ops);
}
