
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;


 struct platform_device* of_find_device_by_node (struct device_node*) ;
 scalar_t__ platform_get_drvdata (struct platform_device*) ;

struct sti_vtg *of_vtg_find(struct device_node *np)
{
 struct platform_device *pdev;

 pdev = of_find_device_by_node(np);
 if (!pdev)
  return ((void*)0);

 return (struct sti_vtg *)platform_get_drvdata(pdev);
}
