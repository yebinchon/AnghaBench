
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct device* kfd_device ;

struct device *kfd_chardev(void)
{
 return kfd_device;
}
