
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct qcm_process_device {void* tma_addr; void* tba_addr; scalar_t__ cwsr_kaddr; } ;
struct device_queue_manager {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ cwsr_enabled; } ;


 scalar_t__ KFD_CWSR_TMA_OFFSET ;

__attribute__((used)) static int set_trap_handler(struct device_queue_manager *dqm,
    struct qcm_process_device *qpd,
    uint64_t tba_addr,
    uint64_t tma_addr)
{
 uint64_t *tma;

 if (dqm->dev->cwsr_enabled) {

  tma = (uint64_t *)(qpd->cwsr_kaddr + KFD_CWSR_TMA_OFFSET);
  tma[0] = tba_addr;
  tma[1] = tma_addr;
 } else {
  qpd->tba_addr = tba_addr;
  qpd->tma_addr = tma_addr;
 }

 return 0;
}
