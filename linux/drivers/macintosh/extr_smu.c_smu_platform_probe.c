
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* of_dev; } ;


 int ENODEV ;
 int schedule_work (int *) ;
 TYPE_1__* smu ;
 int smu_expose_childs_work ;

__attribute__((used)) static int smu_platform_probe(struct platform_device* dev)
{
 if (!smu)
  return -ENODEV;
 smu->of_dev = dev;





 schedule_work(&smu_expose_childs_work);

 return 0;
}
