
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* of_dev; } ;


 TYPE_1__* smu ;

struct platform_device *smu_get_ofdev(void)
{
 if (!smu)
  return ((void*)0);
 return smu->of_dev;
}
