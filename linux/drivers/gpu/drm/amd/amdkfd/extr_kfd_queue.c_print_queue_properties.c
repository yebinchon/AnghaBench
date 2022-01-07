
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_properties {int doorbell_off; int doorbell_ptr; int write_ptr; int read_ptr; int vmid; int queue_id; int queue_address; int queue_percent; int queue_size; int type; } ;


 int pr_debug (char*,...) ;

void print_queue_properties(struct queue_properties *q)
{
 if (!q)
  return;

 pr_debug("Printing queue properties:\n");
 pr_debug("Queue Type: %u\n", q->type);
 pr_debug("Queue Size: %llu\n", q->queue_size);
 pr_debug("Queue percent: %u\n", q->queue_percent);
 pr_debug("Queue Address: 0x%llX\n", q->queue_address);
 pr_debug("Queue Id: %u\n", q->queue_id);
 pr_debug("Queue Process Vmid: %u\n", q->vmid);
 pr_debug("Queue Read Pointer: 0x%px\n", q->read_ptr);
 pr_debug("Queue Write Pointer: 0x%px\n", q->write_ptr);
 pr_debug("Queue Doorbell Pointer: 0x%p\n", q->doorbell_ptr);
 pr_debug("Queue Doorbell Offset: %u\n", q->doorbell_off);
}
