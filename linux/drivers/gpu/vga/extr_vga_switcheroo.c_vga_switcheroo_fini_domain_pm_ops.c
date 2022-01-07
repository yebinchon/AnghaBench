
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_pm_domain_set (struct device*,int *) ;

void vga_switcheroo_fini_domain_pm_ops(struct device *dev)
{
 dev_pm_domain_set(dev, ((void*)0));
}
