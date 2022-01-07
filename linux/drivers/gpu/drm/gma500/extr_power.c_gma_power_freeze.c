
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int gma_power_suspend (struct device*) ;

int gma_power_freeze(struct device *_dev)
{
 return gma_power_suspend(_dev);
}
