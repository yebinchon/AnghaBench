
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dax_pmem_compat_release ;
 int device_for_each_child (struct device*,int *,int ) ;

__attribute__((used)) static int dax_pmem_compat_remove(struct device *dev)
{
 device_for_each_child(dev, ((void*)0), dax_pmem_compat_release);
 return 0;
}
