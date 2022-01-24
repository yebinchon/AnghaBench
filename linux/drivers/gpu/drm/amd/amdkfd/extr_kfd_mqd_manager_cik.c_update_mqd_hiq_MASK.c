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
typedef  int uint64_t ;
struct queue_properties {int queue_size; int /*<<< orphan*/  is_active; int /*<<< orphan*/  vmid; int /*<<< orphan*/  doorbell_off; scalar_t__ read_ptr; scalar_t__ queue_address; } ;
struct mqd_manager {int dummy; } ;
struct cik_mqd {int cp_hqd_pq_control; int /*<<< orphan*/  cp_hqd_vmid; int /*<<< orphan*/  cp_hqd_pq_doorbell_control; void* cp_hqd_pq_rptr_report_addr_hi; void* cp_hqd_pq_rptr_report_addr_lo; void* cp_hqd_pq_base_hi; void* cp_hqd_pq_base_lo; } ;

/* Variables and functions */
 int DEFAULT_MIN_AVAIL_SIZE ; 
 int DEFAULT_RPTR_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KMD_QUEUE ; 
 int PRIV_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct queue_properties) ; 
 struct cik_mqd* FUNC2 (void*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cik_mqd*,struct queue_properties*) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct mqd_manager *mm, void *mqd,
				struct queue_properties *q)
{
	struct cik_mqd *m;

	m = FUNC2(mqd);
	m->cp_hqd_pq_control = DEFAULT_RPTR_BLOCK_SIZE |
				DEFAULT_MIN_AVAIL_SIZE |
				PRIV_STATE |
				KMD_QUEUE;

	/*
	 * Calculating queue size which is log base 2 of actual queue
	 * size -1 dwords
	 */
	m->cp_hqd_pq_control |= FUNC4(q->queue_size / 4) - 1;
	m->cp_hqd_pq_base_lo = FUNC3((uint64_t)q->queue_address >> 8);
	m->cp_hqd_pq_base_hi = FUNC6((uint64_t)q->queue_address >> 8);
	m->cp_hqd_pq_rptr_report_addr_lo = FUNC3((uint64_t)q->read_ptr);
	m->cp_hqd_pq_rptr_report_addr_hi = FUNC6((uint64_t)q->read_ptr);
	m->cp_hqd_pq_doorbell_control = FUNC0(q->doorbell_off);

	m->cp_hqd_vmid = q->vmid;

	q->is_active = FUNC1(*q);

	FUNC5(m, q);
}