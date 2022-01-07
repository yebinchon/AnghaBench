
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_dev {TYPE_2__* dqm; int init_complete; } ;
struct TYPE_3__ {int (* stop ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int atomic_inc_return (int *) ;
 int kfd_iommu_suspend (struct kfd_dev*) ;
 int kfd_locked ;
 int kfd_suspend_all_processes () ;
 int stub1 (TYPE_2__*) ;

void kgd2kfd_suspend(struct kfd_dev *kfd)
{
 if (!kfd->init_complete)
  return;


 if (atomic_inc_return(&kfd_locked) == 1)
  kfd_suspend_all_processes();

 kfd->dqm->ops.stop(kfd->dqm);

 kfd_iommu_suspend(kfd);
}
