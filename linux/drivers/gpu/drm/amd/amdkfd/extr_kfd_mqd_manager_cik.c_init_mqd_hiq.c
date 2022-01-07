
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct queue_properties {int dummy; } ;
struct mqd_manager {int dummy; } ;
struct kfd_mem_obj {int dummy; } ;


 int init_mqd (struct mqd_manager*,void**,struct kfd_mem_obj*,int *,struct queue_properties*) ;

__attribute__((used)) static void init_mqd_hiq(struct mqd_manager *mm, void **mqd,
  struct kfd_mem_obj *mqd_mem_obj, uint64_t *gart_addr,
  struct queue_properties *q)
{
 init_mqd(mm, mqd, mqd_mem_obj, gart_addr, q);
}
