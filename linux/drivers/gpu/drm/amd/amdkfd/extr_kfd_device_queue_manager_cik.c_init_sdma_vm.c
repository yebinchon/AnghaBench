
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int sdma_vm_addr; } ;
struct queue {TYPE_2__ properties; TYPE_1__* process; } ;
struct qcm_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_32bit_user_mode; } ;


 int SDMA0_RLC0_VIRTUAL_ADDR__ATC__SHIFT ;
 int SDMA0_RLC0_VIRTUAL_ADDR__PTR32__SHIFT ;
 int SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK ;
 int SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT ;
 int get_sh_mem_bases_32 (int ) ;
 int get_sh_mem_bases_nybble_64 (int ) ;
 int qpd_to_pdd (struct qcm_process_device*) ;

__attribute__((used)) static void init_sdma_vm(struct device_queue_manager *dqm, struct queue *q,
    struct qcm_process_device *qpd)
{
 uint32_t value = (1 << SDMA0_RLC0_VIRTUAL_ADDR__ATC__SHIFT);

 if (q->process->is_32bit_user_mode)
  value |= (1 << SDMA0_RLC0_VIRTUAL_ADDR__PTR32__SHIFT) |
    get_sh_mem_bases_32(qpd_to_pdd(qpd));
 else
  value |= ((get_sh_mem_bases_nybble_64(qpd_to_pdd(qpd))) <<
    SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT) &
    SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK;

 q->properties.sdma_vm_addr = value;
}
