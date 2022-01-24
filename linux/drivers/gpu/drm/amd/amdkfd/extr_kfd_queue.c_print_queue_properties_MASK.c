#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct queue_properties {int /*<<< orphan*/  doorbell_off; int /*<<< orphan*/  doorbell_ptr; int /*<<< orphan*/  write_ptr; int /*<<< orphan*/  read_ptr; int /*<<< orphan*/  vmid; int /*<<< orphan*/  queue_id; int /*<<< orphan*/  queue_address; int /*<<< orphan*/  queue_percent; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct queue_properties *q)
{
	if (!q)
		return;

	FUNC0("Printing queue properties:\n");
	FUNC0("Queue Type: %u\n", q->type);
	FUNC0("Queue Size: %llu\n", q->queue_size);
	FUNC0("Queue percent: %u\n", q->queue_percent);
	FUNC0("Queue Address: 0x%llX\n", q->queue_address);
	FUNC0("Queue Id: %u\n", q->queue_id);
	FUNC0("Queue Process Vmid: %u\n", q->vmid);
	FUNC0("Queue Read Pointer: 0x%px\n", q->read_ptr);
	FUNC0("Queue Write Pointer: 0x%px\n", q->write_ptr);
	FUNC0("Queue Doorbell Pointer: 0x%p\n", q->doorbell_ptr);
	FUNC0("Queue Doorbell Offset: %u\n", q->doorbell_off);
}