
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdma_vm_addr; } ;
struct queue {TYPE_1__ properties; } ;
struct qcm_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;


 int SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK ;
 int SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT ;
 int get_sh_mem_bases_nybble_64 (int ) ;
 int qpd_to_pdd (struct qcm_process_device*) ;

__attribute__((used)) static void init_sdma_vm_tonga(struct device_queue_manager *dqm,
   struct queue *q,
   struct qcm_process_device *qpd)
{



 q->properties.sdma_vm_addr =
  ((get_sh_mem_bases_nybble_64(qpd_to_pdd(qpd))) <<
   SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT) &
  SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK;
}
