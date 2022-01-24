#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  doorbell_off; int /*<<< orphan*/  doorbell_ptr; int /*<<< orphan*/  write_ptr; int /*<<< orphan*/  read_ptr; int /*<<< orphan*/  vmid; int /*<<< orphan*/  queue_id; int /*<<< orphan*/  queue_address; int /*<<< orphan*/  queue_percent; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  type; } ;
struct queue {int /*<<< orphan*/  device; int /*<<< orphan*/  process; int /*<<< orphan*/  gart_mqd_addr; int /*<<< orphan*/  mqd; TYPE_1__ properties; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct queue *q)
{
	if (!q)
		return;
	FUNC0("Printing queue:\n");
	FUNC0("Queue Type: %u\n", q->properties.type);
	FUNC0("Queue Size: %llu\n", q->properties.queue_size);
	FUNC0("Queue percent: %u\n", q->properties.queue_percent);
	FUNC0("Queue Address: 0x%llX\n", q->properties.queue_address);
	FUNC0("Queue Id: %u\n", q->properties.queue_id);
	FUNC0("Queue Process Vmid: %u\n", q->properties.vmid);
	FUNC0("Queue Read Pointer: 0x%px\n", q->properties.read_ptr);
	FUNC0("Queue Write Pointer: 0x%px\n", q->properties.write_ptr);
	FUNC0("Queue Doorbell Pointer: 0x%p\n", q->properties.doorbell_ptr);
	FUNC0("Queue Doorbell Offset: %u\n", q->properties.doorbell_off);
	FUNC0("Queue MQD Address: 0x%p\n", q->mqd);
	FUNC0("Queue MQD Gart: 0x%llX\n", q->gart_mqd_addr);
	FUNC0("Queue Process Address: 0x%p\n", q->process);
	FUNC0("Queue Device Address: 0x%p\n", q->device);
}