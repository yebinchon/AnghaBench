
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd2kfd_shared_resources {int dummy; } ;
struct kfd_dev {int dummy; } ;



bool kgd2kfd_device_init(struct kfd_dev *kfd,
    const struct kgd2kfd_shared_resources *gpu_resources)
{
 return 0;
}
