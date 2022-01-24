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
typedef  int uint64_t ;
struct v9_mqd {int cp_hqd_pq_control; int cp_hqd_pq_doorbell_control; int cp_hqd_ib_control; scalar_t__ cp_hqd_ctx_save_control; int /*<<< orphan*/  cp_hqd_vmid; scalar_t__ cp_hqd_iq_timer; void* cp_hqd_eop_base_addr_hi; void* cp_hqd_eop_base_addr_lo; int /*<<< orphan*/  cp_hqd_eop_control; void* cp_hqd_pq_wptr_poll_addr_hi; void* cp_hqd_pq_wptr_poll_addr_lo; void* cp_hqd_pq_rptr_report_addr_hi; void* cp_hqd_pq_rptr_report_addr_lo; void* cp_hqd_pq_base_hi; void* cp_hqd_pq_base_lo; } ;
struct queue_properties {int queue_size; int doorbell_off; int eop_ring_buffer_size; int eop_ring_buffer_address; scalar_t__ format; int /*<<< orphan*/  is_active; scalar_t__ ctx_save_restore_area_address; int /*<<< orphan*/  vmid; scalar_t__ write_ptr; scalar_t__ read_ptr; scalar_t__ queue_address; } ;
struct mqd_manager {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ cwsr_enabled; } ;

/* Variables and functions */
 int CP_HQD_IB_CONTROL__IB_EXE_DISABLE__SHIFT ; 
 int CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT ; 
 int CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK ; 
 int CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT ; 
 int CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT ; 
 int CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT ; 
 int CP_HQD_PQ_CONTROL__WPP_CLAMP_EN__SHIFT ; 
 int CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT ; 
 int CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT ; 
 scalar_t__ KFD_QUEUE_FORMAT_AQL ; 
 int /*<<< orphan*/  FUNC0 (struct queue_properties) ; 
 struct v9_mqd* FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v9_mqd*,struct queue_properties*) ; 
 int /*<<< orphan*/  FUNC7 (struct mqd_manager*,void*,struct queue_properties*) ; 
 void* FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct mqd_manager *mm, void *mqd,
		      struct queue_properties *q)
{
	struct v9_mqd *m;

	m = FUNC1(mqd);

	m->cp_hqd_pq_control = 5 << CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT;
	m->cp_hqd_pq_control |= FUNC4(q->queue_size / 4) - 1;
	FUNC5("cp_hqd_pq_control 0x%x\n", m->cp_hqd_pq_control);

	m->cp_hqd_pq_base_lo = FUNC2((uint64_t)q->queue_address >> 8);
	m->cp_hqd_pq_base_hi = FUNC8((uint64_t)q->queue_address >> 8);

	m->cp_hqd_pq_rptr_report_addr_lo = FUNC2((uint64_t)q->read_ptr);
	m->cp_hqd_pq_rptr_report_addr_hi = FUNC8((uint64_t)q->read_ptr);
	m->cp_hqd_pq_wptr_poll_addr_lo = FUNC2((uint64_t)q->write_ptr);
	m->cp_hqd_pq_wptr_poll_addr_hi = FUNC8((uint64_t)q->write_ptr);

	m->cp_hqd_pq_doorbell_control =
		q->doorbell_off <<
			CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT;
	FUNC5("cp_hqd_pq_doorbell_control 0x%x\n",
			m->cp_hqd_pq_doorbell_control);

	m->cp_hqd_ib_control =
		3 << CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT |
		1 << CP_HQD_IB_CONTROL__IB_EXE_DISABLE__SHIFT;

	/*
	 * HW does not clamp this field correctly. Maximum EOP queue size
	 * is constrained by per-SE EOP done signal count, which is 8-bit.
	 * Limit is 0xFF EOP entries (= 0x7F8 dwords). CP will not submit
	 * more than (EOP entry count - 1) so a queue size of 0x800 dwords
	 * is safe, giving a maximum field value of 0xA.
	 */
	m->cp_hqd_eop_control = FUNC3(0xA,
		FUNC4(q->eop_ring_buffer_size / 4) - 1);
	m->cp_hqd_eop_base_addr_lo =
			FUNC2(q->eop_ring_buffer_address >> 8);
	m->cp_hqd_eop_base_addr_hi =
			FUNC8(q->eop_ring_buffer_address >> 8);

	m->cp_hqd_iq_timer = 0;

	m->cp_hqd_vmid = q->vmid;

	if (q->format == KFD_QUEUE_FORMAT_AQL) {
		m->cp_hqd_pq_control |= CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK |
				2 << CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT |
				1 << CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT |
				1 << CP_HQD_PQ_CONTROL__WPP_CLAMP_EN__SHIFT;
		m->cp_hqd_pq_doorbell_control |= 1 <<
			CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT;
	}
	if (mm->dev->cwsr_enabled && q->ctx_save_restore_area_address)
		m->cp_hqd_ctx_save_control = 0;

	FUNC7(mm, mqd, q);
	FUNC6(m, q);

	q->is_active = FUNC0(*q);
}