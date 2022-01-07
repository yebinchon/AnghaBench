
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqd_manager {int dummy; } ;
struct kfd_mem_obj {int gtt_mem; } ;


 int WARN_ON (int) ;
 int kfree (struct kfd_mem_obj*) ;

void free_mqd_hiq_sdma(struct mqd_manager *mm, void *mqd,
   struct kfd_mem_obj *mqd_mem_obj)
{
 WARN_ON(!mqd_mem_obj->gtt_mem);
 kfree(mqd_mem_obj);
}
