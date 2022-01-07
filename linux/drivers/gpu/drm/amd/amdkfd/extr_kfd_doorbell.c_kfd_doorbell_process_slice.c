
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {TYPE_1__* device_info; } ;
struct TYPE_2__ {int doorbell_size; } ;


 int KFD_MAX_NUM_OF_QUEUES_PER_PROCESS ;
 int PAGE_SIZE ;
 size_t roundup (int,int ) ;

size_t kfd_doorbell_process_slice(struct kfd_dev *kfd)
{
 return roundup(kfd->device_info->doorbell_size *
   KFD_MAX_NUM_OF_QUEUES_PER_PROCESS,
   PAGE_SIZE);
}
