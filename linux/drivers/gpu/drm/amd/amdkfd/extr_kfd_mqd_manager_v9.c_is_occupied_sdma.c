
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct mqd_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {int kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_3__ {int (* hqd_sdma_is_occupied ) (int ,void*) ;} ;


 int stub1 (int ,void*) ;

__attribute__((used)) static bool is_occupied_sdma(struct mqd_manager *mm, void *mqd,
  uint64_t queue_address, uint32_t pipe_id,
  uint32_t queue_id)
{
 return mm->dev->kfd2kgd->hqd_sdma_is_occupied(mm->dev->kgd, mqd);
}
