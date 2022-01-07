
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_1__* bus; } ;
struct TYPE_4__ {int runtime_resume; int runtime_suspend; } ;
struct dev_pm_domain {TYPE_2__ ops; } ;
struct TYPE_3__ {TYPE_2__* pm; } ;


 int EINVAL ;
 int dev_pm_domain_set (struct device*,struct dev_pm_domain*) ;
 int vga_switcheroo_runtime_resume ;
 int vga_switcheroo_runtime_suspend ;

int vga_switcheroo_init_domain_pm_ops(struct device *dev,
          struct dev_pm_domain *domain)
{

 if (dev->bus && dev->bus->pm) {
  domain->ops = *dev->bus->pm;
  domain->ops.runtime_suspend = vga_switcheroo_runtime_suspend;
  domain->ops.runtime_resume = vga_switcheroo_runtime_resume;

  dev_pm_domain_set(dev, domain);
  return 0;
 }
 dev_pm_domain_set(dev, ((void*)0));
 return -EINVAL;
}
