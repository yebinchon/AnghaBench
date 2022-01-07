
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sdma_vm_addr; } ;
struct queue {TYPE_1__ properties; } ;
struct qcm_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;



__attribute__((used)) static void init_sdma_vm_v9(struct device_queue_manager *dqm, struct queue *q,
       struct qcm_process_device *qpd)
{

 q->properties.sdma_vm_addr = 0;
}
