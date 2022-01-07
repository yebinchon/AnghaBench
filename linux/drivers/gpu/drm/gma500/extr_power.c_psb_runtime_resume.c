
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int gma_power_resume (struct device*) ;

int psb_runtime_resume(struct device *dev)
{
 return gma_power_resume(dev);
}
