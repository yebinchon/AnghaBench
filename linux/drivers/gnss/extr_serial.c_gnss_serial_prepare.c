
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ pm_runtime_suspended (struct device*) ;

__attribute__((used)) static int gnss_serial_prepare(struct device *dev)
{
 if (pm_runtime_suspended(dev))
  return 1;

 return 0;
}
