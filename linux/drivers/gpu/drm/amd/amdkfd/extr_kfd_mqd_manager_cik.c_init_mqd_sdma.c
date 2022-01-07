
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct queue_properties {int dummy; } ;
struct mqd_manager {int (* update_mqd ) (struct mqd_manager*,struct cik_sdma_rlc_registers*,struct queue_properties*) ;} ;
struct kfd_mem_obj {int gpu_addr; scalar_t__ cpu_ptr; } ;
struct cik_sdma_rlc_registers {int dummy; } ;


 int memset (struct cik_sdma_rlc_registers*,int ,int) ;
 int stub1 (struct mqd_manager*,struct cik_sdma_rlc_registers*,struct queue_properties*) ;

__attribute__((used)) static void init_mqd_sdma(struct mqd_manager *mm, void **mqd,
   struct kfd_mem_obj *mqd_mem_obj, uint64_t *gart_addr,
   struct queue_properties *q)
{
 struct cik_sdma_rlc_registers *m;

 m = (struct cik_sdma_rlc_registers *) mqd_mem_obj->cpu_ptr;

 memset(m, 0, sizeof(struct cik_sdma_rlc_registers));

 *mqd = m;
 if (gart_addr)
  *gart_addr = mqd_mem_obj->gpu_addr;

 mm->update_mqd(mm, m, q);
}
