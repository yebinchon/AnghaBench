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
typedef  int uint32_t ;
struct v10_compute_mqd {scalar_t__ cp_hqd_vmid; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum kfd_preempt_type { ____Placeholder_kfd_preempt_type } kfd_preempt_type ;
typedef  enum hqd_dequeue_request_type { ____Placeholder_hqd_dequeue_request_type } hqd_dequeue_request_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int CP_HQD_ACTIVE__ACTIVE_MASK ; 
 int CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK ; 
 int /*<<< orphan*/  CP_HQD_IQ_TIMER ; 
 int DRAIN_PIPE ; 
 int ETIME ; 
 int /*<<< orphan*/  GC ; 
 unsigned int HZ ; 
#define  KFD_PREEMPT_TYPE_WAVEFRONT_DRAIN 129 
#define  KFD_PREEMPT_TYPE_WAVEFRONT_RESET 128 
 int /*<<< orphan*/  PROCESSING_IQ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RESET_WAVES ; 
 int /*<<< orphan*/  RETRY_TYPE ; 
 int /*<<< orphan*/  RLC_CP_SCHEDULERS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_TIME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kgd_dev*,int,int) ; 
 struct amdgpu_device* FUNC6 (struct kgd_dev*) ; 
 struct v10_compute_mqd* FUNC7 (void*) ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  mmCP_HQD_ACTIVE ; 
 int /*<<< orphan*/  mmCP_HQD_DEQUEUE_REQUEST ; 
 int /*<<< orphan*/  mmCP_HQD_IQ_TIMER ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct kgd_dev*) ; 
 int /*<<< orphan*/  scheduler1 ; 
 scalar_t__ FUNC16 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 

__attribute__((used)) static int FUNC18(struct kgd_dev *kgd, void *mqd,
				enum kfd_preempt_type reset_type,
				unsigned int utimeout, uint32_t pipe_id,
				uint32_t queue_id)
{
	struct amdgpu_device *adev = FUNC6(kgd);
	enum hqd_dequeue_request_type type;
	unsigned long end_jiffies;
	uint32_t temp;
	struct v10_compute_mqd *m = FUNC7(mqd);

#if 0
	unsigned long flags;
	int retry;
#endif

	FUNC5(kgd, pipe_id, queue_id);

	if (m->cp_hqd_vmid == 0)
		FUNC4(GC, 0, RLC_CP_SCHEDULERS, scheduler1, 0);

	switch (reset_type) {
	case KFD_PREEMPT_TYPE_WAVEFRONT_DRAIN:
		type = DRAIN_PIPE;
		break;
	case KFD_PREEMPT_TYPE_WAVEFRONT_RESET:
		type = RESET_WAVES;
		break;
	default:
		type = DRAIN_PIPE;
		break;
	}

#if 0 /* Is this still needed? */
	/* Workaround: If IQ timer is active and the wait time is close to or
	 * equal to 0, dequeueing is not safe. Wait until either the wait time
	 * is larger or timer is cleared. Also, ensure that IQ_REQ_PEND is
	 * cleared before continuing. Also, ensure wait times are set to at
	 * least 0x3.
	 */
	local_irq_save(flags);
	preempt_disable();
	retry = 5000; /* wait for 500 usecs at maximum */
	while (true) {
		temp = RREG32(mmCP_HQD_IQ_TIMER);
		if (REG_GET_FIELD(temp, CP_HQD_IQ_TIMER, PROCESSING_IQ)) {
			pr_debug("HW is processing IQ\n");
			goto loop;
		}
		if (REG_GET_FIELD(temp, CP_HQD_IQ_TIMER, ACTIVE)) {
			if (REG_GET_FIELD(temp, CP_HQD_IQ_TIMER, RETRY_TYPE)
					== 3) /* SEM-rearm is safe */
				break;
			/* Wait time 3 is safe for CP, but our MMIO read/write
			 * time is close to 1 microsecond, so check for 10 to
			 * leave more buffer room
			 */
			if (REG_GET_FIELD(temp, CP_HQD_IQ_TIMER, WAIT_TIME)
					>= 10)
				break;
			pr_debug("IQ timer is active\n");
		} else
			break;
loop:
		if (!retry) {
			pr_err("CP HQD IQ timer status time out\n");
			break;
		}
		ndelay(100);
		--retry;
	}
	retry = 1000;
	while (true) {
		temp = RREG32(mmCP_HQD_DEQUEUE_REQUEST);
		if (!(temp & CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK))
			break;
		pr_debug("Dequeue request is pending\n");

		if (!retry) {
			pr_err("CP HQD dequeue request time out\n");
			break;
		}
		ndelay(100);
		--retry;
	}
	local_irq_restore(flags);
	preempt_enable();
#endif

	FUNC3(FUNC2(GC, 0, mmCP_HQD_DEQUEUE_REQUEST), type);

	end_jiffies = (utimeout * HZ / 1000) + jiffies;
	while (true) {
		temp = FUNC1(FUNC2(GC, 0, mmCP_HQD_ACTIVE));
		if (!(temp & CP_HQD_ACTIVE__ACTIVE_MASK))
			break;
		if (FUNC16(jiffies, end_jiffies)) {
			FUNC12("cp queue preemption time out.\n");
			FUNC15(kgd);
			return -ETIME;
		}
		FUNC17(500, 1000);
	}

	FUNC15(kgd);
	return 0;
}