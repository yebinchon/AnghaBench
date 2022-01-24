#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {int gpu_addr; } ;
struct TYPE_5__ {int num_pipe; int num_mec; int hpd_eop_gpu_addr; } ;
struct radeon_device {int usec_timeout; TYPE_4__* ring; int /*<<< orphan*/  srbm_mutex; TYPE_2__ wb; int /*<<< orphan*/  dev; TYPE_1__ mec; } ;
struct TYPE_7__ {int cp_hqd_pq_doorbell_control; int cp_hqd_dequeue_request; int cp_hqd_pq_rptr; int cp_hqd_pq_wptr; int cp_mqd_base_addr; int cp_mqd_base_addr_hi; int cp_mqd_control; int cp_hqd_pq_base; int cp_hqd_pq_base_hi; int cp_hqd_pq_control; int cp_hqd_pq_wptr_poll_addr; int cp_hqd_pq_wptr_poll_addr_hi; int cp_hqd_pq_rptr_report_addr; int cp_hqd_pq_rptr_report_addr_hi; int cp_hqd_vmid; int cp_hqd_active; } ;
struct bonaire_mqd {int header; int* static_thread_mgmt01; int* static_thread_mgmt23; TYPE_3__ queue_state; } ;
struct TYPE_8__ {int me; int pipe; int gpu_addr; int ring_size; int wptr; int ready; int /*<<< orphan*/ * mqd_obj; int /*<<< orphan*/  doorbell_index; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int BUF_SWAP_32BIT ; 
 int CAYMAN_RING_TYPE_CP1_INDEX ; 
 int CAYMAN_RING_TYPE_CP2_INDEX ; 
 int CIK_WB_CP1_WPTR_OFFSET ; 
 int CIK_WB_CP2_WPTR_OFFSET ; 
 int /*<<< orphan*/  CP_CPF_DEBUG ; 
 int /*<<< orphan*/  CP_HPD_EOP_BASE_ADDR ; 
 int /*<<< orphan*/  CP_HPD_EOP_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CP_HPD_EOP_CONTROL ; 
 int /*<<< orphan*/  CP_HPD_EOP_VMID ; 
 int /*<<< orphan*/  CP_HQD_ACTIVE ; 
 int /*<<< orphan*/  CP_HQD_DEQUEUE_REQUEST ; 
 int /*<<< orphan*/  CP_HQD_PQ_BASE ; 
 int /*<<< orphan*/  CP_HQD_PQ_BASE_HI ; 
 int /*<<< orphan*/  CP_HQD_PQ_CONTROL ; 
 int /*<<< orphan*/  CP_HQD_PQ_DOORBELL_CONTROL ; 
 int /*<<< orphan*/  CP_HQD_PQ_RPTR ; 
 int /*<<< orphan*/  CP_HQD_PQ_RPTR_REPORT_ADDR ; 
 int /*<<< orphan*/  CP_HQD_PQ_RPTR_REPORT_ADDR_HI ; 
 int /*<<< orphan*/  CP_HQD_PQ_WPTR ; 
 int /*<<< orphan*/  CP_HQD_PQ_WPTR_POLL_ADDR ; 
 int /*<<< orphan*/  CP_HQD_PQ_WPTR_POLL_ADDR_HI ; 
 int /*<<< orphan*/  CP_HQD_VMID ; 
 int /*<<< orphan*/  CP_MQD_BASE_ADDR ; 
 int /*<<< orphan*/  CP_MQD_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CP_MQD_CONTROL ; 
 int /*<<< orphan*/  CP_PQ_WPTR_POLL_CNTL ; 
 int DOORBELL_EN ; 
 int DOORBELL_HIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DOORBELL_OFFSET_MASK ; 
 int DOORBELL_SOURCE ; 
 int EOP_SIZE_MASK ; 
 int KMD_QUEUE ; 
 int MEC_HPD_SIZE ; 
 int MQD_VMID_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PQ_VOLATILE ; 
 int PRIV_STATE ; 
 int QUEUE_SIZE_MASK ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int RADEON_GPU_PAGE_SIZE ; 
 int RADEON_WB_CP1_RPTR_OFFSET ; 
 int RADEON_WB_CP2_RPTR_OFFSET ; 
 int ROQ_PQ_IB_FLIP ; 
 int RPTR_BLOCK_SIZE_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UNORD_DISPATCH ; 
 int WPTR_POLL_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct radeon_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct radeon_device*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 int FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct radeon_device *rdev)
{
	int r, i, j, idx;
	u32 tmp;
	bool use_doorbell = true;
	u64 hqd_gpu_addr;
	u64 mqd_gpu_addr;
	u64 eop_gpu_addr;
	u64 wb_gpu_addr;
	u32 *buf;
	struct bonaire_mqd *mqd;

	r = FUNC4(rdev);
	if (r)
		return r;

	/* fix up chicken bits */
	tmp = FUNC1(CP_CPF_DEBUG);
	tmp |= (1 << 23);
	FUNC2(CP_CPF_DEBUG, tmp);

	/* init the pipes */
	FUNC8(&rdev->srbm_mutex);

	for (i = 0; i < (rdev->mec.num_pipe * rdev->mec.num_mec); ++i) {
		int me = (i < 4) ? 1 : 2;
		int pipe = (i < 4) ? i : (i - 4);

		FUNC5(rdev, me, pipe, 0, 0);

		eop_gpu_addr = rdev->mec.hpd_eop_gpu_addr + (i * MEC_HPD_SIZE * 2) ;
		/* write the EOP addr */
		FUNC2(CP_HPD_EOP_BASE_ADDR, eop_gpu_addr >> 8);
		FUNC2(CP_HPD_EOP_BASE_ADDR_HI, FUNC20(eop_gpu_addr) >> 8);

		/* set the VMID assigned */
		FUNC2(CP_HPD_EOP_VMID, 0);

		/* set the EOP size, register value is 2^(EOP_SIZE+1) dwords */
		tmp = FUNC1(CP_HPD_EOP_CONTROL);
		tmp &= ~EOP_SIZE_MASK;
		tmp |= FUNC10(MEC_HPD_SIZE / 8);
		FUNC2(CP_HPD_EOP_CONTROL, tmp);

	}
	FUNC5(rdev, 0, 0, 0, 0);
	FUNC9(&rdev->srbm_mutex);

	/* init the queues.  Just two for now. */
	for (i = 0; i < 2; i++) {
		if (i == 0)
			idx = CAYMAN_RING_TYPE_CP1_INDEX;
		else
			idx = CAYMAN_RING_TYPE_CP2_INDEX;

		if (rdev->ring[idx].mqd_obj == NULL) {
			r = FUNC11(rdev,
					     sizeof(struct bonaire_mqd),
					     PAGE_SIZE, true,
					     RADEON_GEM_DOMAIN_GTT, 0, NULL,
					     NULL, &rdev->ring[idx].mqd_obj);
			if (r) {
				FUNC6(rdev->dev, "(%d) create MQD bo failed\n", r);
				return r;
			}
		}

		r = FUNC15(rdev->ring[idx].mqd_obj, false);
		if (FUNC19(r != 0)) {
			FUNC3(rdev);
			return r;
		}
		r = FUNC14(rdev->ring[idx].mqd_obj, RADEON_GEM_DOMAIN_GTT,
				  &mqd_gpu_addr);
		if (r) {
			FUNC6(rdev->dev, "(%d) pin MQD bo failed\n", r);
			FUNC3(rdev);
			return r;
		}
		r = FUNC12(rdev->ring[idx].mqd_obj, (void **)&buf);
		if (r) {
			FUNC6(rdev->dev, "(%d) map MQD bo failed\n", r);
			FUNC3(rdev);
			return r;
		}

		/* init the mqd struct */
		FUNC7(buf, 0, sizeof(struct bonaire_mqd));

		mqd = (struct bonaire_mqd *)buf;
		mqd->header = 0xC0310800;
		mqd->static_thread_mgmt01[0] = 0xffffffff;
		mqd->static_thread_mgmt01[1] = 0xffffffff;
		mqd->static_thread_mgmt23[0] = 0xffffffff;
		mqd->static_thread_mgmt23[1] = 0xffffffff;

		FUNC8(&rdev->srbm_mutex);
		FUNC5(rdev, rdev->ring[idx].me,
				rdev->ring[idx].pipe,
				rdev->ring[idx].queue, 0);

		/* disable wptr polling */
		tmp = FUNC1(CP_PQ_WPTR_POLL_CNTL);
		tmp &= ~WPTR_POLL_EN;
		FUNC2(CP_PQ_WPTR_POLL_CNTL, tmp);

		/* enable doorbell? */
		mqd->queue_state.cp_hqd_pq_doorbell_control =
			FUNC1(CP_HQD_PQ_DOORBELL_CONTROL);
		if (use_doorbell)
			mqd->queue_state.cp_hqd_pq_doorbell_control |= DOORBELL_EN;
		else
			mqd->queue_state.cp_hqd_pq_doorbell_control &= ~DOORBELL_EN;
		FUNC2(CP_HQD_PQ_DOORBELL_CONTROL,
		       mqd->queue_state.cp_hqd_pq_doorbell_control);

		/* disable the queue if it's active */
		mqd->queue_state.cp_hqd_dequeue_request = 0;
		mqd->queue_state.cp_hqd_pq_rptr = 0;
		mqd->queue_state.cp_hqd_pq_wptr= 0;
		if (FUNC1(CP_HQD_ACTIVE) & 1) {
			FUNC2(CP_HQD_DEQUEUE_REQUEST, 1);
			for (j = 0; j < rdev->usec_timeout; j++) {
				if (!(FUNC1(CP_HQD_ACTIVE) & 1))
					break;
				FUNC18(1);
			}
			FUNC2(CP_HQD_DEQUEUE_REQUEST, mqd->queue_state.cp_hqd_dequeue_request);
			FUNC2(CP_HQD_PQ_RPTR, mqd->queue_state.cp_hqd_pq_rptr);
			FUNC2(CP_HQD_PQ_WPTR, mqd->queue_state.cp_hqd_pq_wptr);
		}

		/* set the pointer to the MQD */
		mqd->queue_state.cp_mqd_base_addr = mqd_gpu_addr & 0xfffffffc;
		mqd->queue_state.cp_mqd_base_addr_hi = FUNC20(mqd_gpu_addr);
		FUNC2(CP_MQD_BASE_ADDR, mqd->queue_state.cp_mqd_base_addr);
		FUNC2(CP_MQD_BASE_ADDR_HI, mqd->queue_state.cp_mqd_base_addr_hi);
		/* set MQD vmid to 0 */
		mqd->queue_state.cp_mqd_control = FUNC1(CP_MQD_CONTROL);
		mqd->queue_state.cp_mqd_control &= ~MQD_VMID_MASK;
		FUNC2(CP_MQD_CONTROL, mqd->queue_state.cp_mqd_control);

		/* set the pointer to the HQD, this is similar CP_RB0_BASE/_HI */
		hqd_gpu_addr = rdev->ring[idx].gpu_addr >> 8;
		mqd->queue_state.cp_hqd_pq_base = hqd_gpu_addr;
		mqd->queue_state.cp_hqd_pq_base_hi = FUNC20(hqd_gpu_addr);
		FUNC2(CP_HQD_PQ_BASE, mqd->queue_state.cp_hqd_pq_base);
		FUNC2(CP_HQD_PQ_BASE_HI, mqd->queue_state.cp_hqd_pq_base_hi);

		/* set up the HQD, this is similar to CP_RB0_CNTL */
		mqd->queue_state.cp_hqd_pq_control = FUNC1(CP_HQD_PQ_CONTROL);
		mqd->queue_state.cp_hqd_pq_control &=
			~(QUEUE_SIZE_MASK | RPTR_BLOCK_SIZE_MASK);

		mqd->queue_state.cp_hqd_pq_control |=
			FUNC10(rdev->ring[idx].ring_size / 8);
		mqd->queue_state.cp_hqd_pq_control |=
			(FUNC10(RADEON_GPU_PAGE_SIZE/8) << 8);
#ifdef __BIG_ENDIAN
		mqd->queue_state.cp_hqd_pq_control |= BUF_SWAP_32BIT;
#endif
		mqd->queue_state.cp_hqd_pq_control &=
			~(UNORD_DISPATCH | ROQ_PQ_IB_FLIP | PQ_VOLATILE);
		mqd->queue_state.cp_hqd_pq_control |=
			PRIV_STATE | KMD_QUEUE; /* assuming kernel queue control */
		FUNC2(CP_HQD_PQ_CONTROL, mqd->queue_state.cp_hqd_pq_control);

		/* only used if CP_PQ_WPTR_POLL_CNTL.WPTR_POLL_EN=1 */
		if (i == 0)
			wb_gpu_addr = rdev->wb.gpu_addr + CIK_WB_CP1_WPTR_OFFSET;
		else
			wb_gpu_addr = rdev->wb.gpu_addr + CIK_WB_CP2_WPTR_OFFSET;
		mqd->queue_state.cp_hqd_pq_wptr_poll_addr = wb_gpu_addr & 0xfffffffc;
		mqd->queue_state.cp_hqd_pq_wptr_poll_addr_hi = FUNC20(wb_gpu_addr) & 0xffff;
		FUNC2(CP_HQD_PQ_WPTR_POLL_ADDR, mqd->queue_state.cp_hqd_pq_wptr_poll_addr);
		FUNC2(CP_HQD_PQ_WPTR_POLL_ADDR_HI,
		       mqd->queue_state.cp_hqd_pq_wptr_poll_addr_hi);

		/* set the wb address wether it's enabled or not */
		if (i == 0)
			wb_gpu_addr = rdev->wb.gpu_addr + RADEON_WB_CP1_RPTR_OFFSET;
		else
			wb_gpu_addr = rdev->wb.gpu_addr + RADEON_WB_CP2_RPTR_OFFSET;
		mqd->queue_state.cp_hqd_pq_rptr_report_addr = wb_gpu_addr & 0xfffffffc;
		mqd->queue_state.cp_hqd_pq_rptr_report_addr_hi =
			FUNC20(wb_gpu_addr) & 0xffff;
		FUNC2(CP_HQD_PQ_RPTR_REPORT_ADDR,
		       mqd->queue_state.cp_hqd_pq_rptr_report_addr);
		FUNC2(CP_HQD_PQ_RPTR_REPORT_ADDR_HI,
		       mqd->queue_state.cp_hqd_pq_rptr_report_addr_hi);

		/* enable the doorbell if requested */
		if (use_doorbell) {
			mqd->queue_state.cp_hqd_pq_doorbell_control =
				FUNC1(CP_HQD_PQ_DOORBELL_CONTROL);
			mqd->queue_state.cp_hqd_pq_doorbell_control &= ~DOORBELL_OFFSET_MASK;
			mqd->queue_state.cp_hqd_pq_doorbell_control |=
				FUNC0(rdev->ring[idx].doorbell_index);
			mqd->queue_state.cp_hqd_pq_doorbell_control |= DOORBELL_EN;
			mqd->queue_state.cp_hqd_pq_doorbell_control &=
				~(DOORBELL_SOURCE | DOORBELL_HIT);

		} else {
			mqd->queue_state.cp_hqd_pq_doorbell_control = 0;
		}
		FUNC2(CP_HQD_PQ_DOORBELL_CONTROL,
		       mqd->queue_state.cp_hqd_pq_doorbell_control);

		/* read and write pointers, similar to CP_RB0_WPTR/_RPTR */
		rdev->ring[idx].wptr = 0;
		mqd->queue_state.cp_hqd_pq_wptr = rdev->ring[idx].wptr;
		FUNC2(CP_HQD_PQ_WPTR, mqd->queue_state.cp_hqd_pq_wptr);
		mqd->queue_state.cp_hqd_pq_rptr = FUNC1(CP_HQD_PQ_RPTR);

		/* set the vmid for the queue */
		mqd->queue_state.cp_hqd_vmid = 0;
		FUNC2(CP_HQD_VMID, mqd->queue_state.cp_hqd_vmid);

		/* activate the queue */
		mqd->queue_state.cp_hqd_active = 1;
		FUNC2(CP_HQD_ACTIVE, mqd->queue_state.cp_hqd_active);

		FUNC5(rdev, 0, 0, 0, 0);
		FUNC9(&rdev->srbm_mutex);

		FUNC13(rdev->ring[idx].mqd_obj);
		FUNC16(rdev->ring[idx].mqd_obj);

		rdev->ring[idx].ready = true;
		r = FUNC17(rdev, idx, &rdev->ring[idx]);
		if (r)
			rdev->ring[idx].ready = false;
	}

	return 0;
}