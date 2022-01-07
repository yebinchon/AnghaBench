
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {scalar_t__ doorbell_kernel_ptr; } ;


 int iounmap (scalar_t__) ;

void kfd_doorbell_fini(struct kfd_dev *kfd)
{
 if (kfd->doorbell_kernel_ptr)
  iounmap(kfd->doorbell_kernel_ptr);
}
