
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mqd_manager {TYPE_2__* dev; } ;
typedef enum kfd_preempt_type { ____Placeholder_kfd_preempt_type } kfd_preempt_type ;
struct TYPE_4__ {int kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_3__ {int (* hqd_destroy ) (int ,void*,int,unsigned int,int ,int ) ;} ;


 int stub1 (int ,void*,int,unsigned int,int ,int ) ;

__attribute__((used)) static int destroy_mqd(struct mqd_manager *mm, void *mqd,
         enum kfd_preempt_type type,
         unsigned int timeout, uint32_t pipe_id,
         uint32_t queue_id)
{
 return mm->dev->kfd2kgd->hqd_destroy
  (mm->dev->kgd, mqd, type, timeout,
   pipe_id, queue_id);
}
