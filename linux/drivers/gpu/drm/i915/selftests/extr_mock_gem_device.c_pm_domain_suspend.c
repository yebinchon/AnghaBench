
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_generic_runtime_suspend (struct device*) ;

__attribute__((used)) static int pm_domain_suspend(struct device *dev)
{
 return pm_generic_runtime_suspend(dev);
}
