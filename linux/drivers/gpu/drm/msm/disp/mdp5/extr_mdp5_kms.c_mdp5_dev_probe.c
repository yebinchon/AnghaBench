
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int DBG (char*) ;
 int component_add (int *,int *) ;
 int mdp5_ops ;
 int mdp5_setup_interconnect (struct platform_device*) ;

__attribute__((used)) static int mdp5_dev_probe(struct platform_device *pdev)
{
 int ret;

 DBG("");

 ret = mdp5_setup_interconnect(pdev);
 if (ret)
  return ret;

 return component_add(&pdev->dev, &mdp5_ops);
}
