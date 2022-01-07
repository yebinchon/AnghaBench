
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int gma_power_resume (struct device*) ;

int gma_power_restore(struct device *_dev)
{
 return gma_power_resume(_dev);
}
