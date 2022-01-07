
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int applesmc_device_init () ;
 int applesmc_init_smcreg () ;

__attribute__((used)) static int applesmc_probe(struct platform_device *dev)
{
 int ret;

 ret = applesmc_init_smcreg();
 if (ret)
  return ret;

 applesmc_device_init();

 return 0;
}
