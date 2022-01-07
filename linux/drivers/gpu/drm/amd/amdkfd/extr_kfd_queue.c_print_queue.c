
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int doorbell_off; int doorbell_ptr; int write_ptr; int read_ptr; int vmid; int queue_id; int queue_address; int queue_percent; int queue_size; int type; } ;
struct queue {int device; int process; int gart_mqd_addr; int mqd; TYPE_1__ properties; } ;


 int pr_debug (char*,...) ;

void print_queue(struct queue *q)
{
 if (!q)
  return;
 pr_debug("Printing queue:\n");
 pr_debug("Queue Type: %u\n", q->properties.type);
 pr_debug("Queue Size: %llu\n", q->properties.queue_size);
 pr_debug("Queue percent: %u\n", q->properties.queue_percent);
 pr_debug("Queue Address: 0x%llX\n", q->properties.queue_address);
 pr_debug("Queue Id: %u\n", q->properties.queue_id);
 pr_debug("Queue Process Vmid: %u\n", q->properties.vmid);
 pr_debug("Queue Read Pointer: 0x%px\n", q->properties.read_ptr);
 pr_debug("Queue Write Pointer: 0x%px\n", q->properties.write_ptr);
 pr_debug("Queue Doorbell Pointer: 0x%p\n", q->properties.doorbell_ptr);
 pr_debug("Queue Doorbell Offset: %u\n", q->properties.doorbell_off);
 pr_debug("Queue MQD Address: 0x%p\n", q->mqd);
 pr_debug("Queue MQD Gart: 0x%llX\n", q->gart_mqd_addr);
 pr_debug("Queue Process Address: 0x%p\n", q->process);
 pr_debug("Queue Device Address: 0x%p\n", q->device);
}
