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
struct vi_mqd {scalar_t__ cp_hqd_vmid; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {scalar_t__ in_gpu_reset; } ;
typedef  enum kfd_preempt_type { ____Placeholder_kfd_preempt_type } kfd_preempt_type ;
typedef  enum hqd_dequeue_request_type { ____Placeholder_hqd_dequeue_request_type } hqd_dequeue_request_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int CP_HQD_ACTIVE__ACTIVE_MASK ; 
 int CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK ; 
 int /*<<< orphan*/  CP_HQD_IQ_TIMER ; 
 int DRAIN_PIPE ; 
 int EIO ; 
 int ETIME ; 
 unsigned int HZ ; 
#define  KFD_PREEMPT_TYPE_WAVEFRONT_DRAIN 129 
#define  KFD_PREEMPT_TYPE_WAVEFRONT_RESET 128 
 int /*<<< orphan*/  PROCESSING_IQ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RESET_WAVES ; 
 int /*<<< orphan*/  RETRY_TYPE ; 
 int /*<<< orphan*/  RLC_CP_SCHEDULERS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kgd_dev*,int,int) ; 
 struct amdgpu_device* FUNC5 (struct kgd_dev*) ; 
 struct vi_mqd* FUNC6 (void*) ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  mmCP_HQD_ACTIVE ; 
 int /*<<< orphan*/  mmCP_HQD_DEQUEUE_REQUEST ; 
 int /*<<< orphan*/  mmCP_HQD_IQ_TIMER ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct kgd_dev*) ; 
 int /*<<< orphan*/  scheduler1 ; 
 scalar_t__ FUNC15 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static int FUNC17(struct kgd_dev *kgd, void *mqd,
				enum kfd_preempt_type reset_type,
				unsigned int utimeout, uint32_t pipe_id,
				uint32_t queue_id)
{
	struct amdgpu_device *adev = FUNC5(kgd);
	uint32_t temp;
	enum hqd_dequeue_request_type type;
	unsigned long flags, end_jiffies;
	int retry;
	struct vi_mqd *m = FUNC6(mqd);

	if (adev->in_gpu_reset)
		return -EIO;

	FUNC4(kgd, pipe_id, queue_id);

	if (m->cp_hqd_vmid == 0)
		FUNC3(RLC_CP_SCHEDULERS, scheduler1, 0);

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

	/* Workaround: If IQ timer is active and the wait time is close to or
	 * equal to 0, dequeueing is not safe. Wait until either the wait time
	 * is larger or timer is cleared. Also, ensure that IQ_REQ_PEND is
	 * cleared before continuing. Also, ensure wait times are set to at
	 * least 0x3.
	 */
	FUNC8(flags);
	FUNC12();
	retry = 5000; /* wait for 500 usecs at maximum */
	while (true) {
		temp = FUNC1(mmCP_HQD_IQ_TIMER);
		if (FUNC0(temp, CP_HQD_IQ_TIMER, PROCESSING_IQ)) {
			FUNC10("HW is processing IQ\n");
			goto loop;
		}
		if (FUNC0(temp, CP_HQD_IQ_TIMER, ACTIVE)) {
			if (FUNC0(temp, CP_HQD_IQ_TIMER, RETRY_TYPE)
					== 3) /* SEM-rearm is safe */
				break;
			/* Wait time 3 is safe for CP, but our MMIO read/write
			 * time is close to 1 microsecond, so check for 10 to
			 * leave more buffer room
			 */
			if (FUNC0(temp, CP_HQD_IQ_TIMER, WAIT_TIME)
					>= 10)
				break;
			FUNC10("IQ timer is active\n");
		} else
			break;
loop:
		if (!retry) {
			FUNC11("CP HQD IQ timer status time out\n");
			break;
		}
		FUNC9(100);
		--retry;
	}
	retry = 1000;
	while (true) {
		temp = FUNC1(mmCP_HQD_DEQUEUE_REQUEST);
		if (!(temp & CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK))
			break;
		FUNC10("Dequeue request is pending\n");

		if (!retry) {
			FUNC11("CP HQD dequeue request time out\n");
			break;
		}
		FUNC9(100);
		--retry;
	}
	FUNC7(flags);
	FUNC13();

	FUNC2(mmCP_HQD_DEQUEUE_REQUEST, type);

	end_jiffies = (utimeout * HZ / 1000) + jiffies;
	while (true) {
		temp = FUNC1(mmCP_HQD_ACTIVE);
		if (!(temp & CP_HQD_ACTIVE__ACTIVE_MASK))
			break;
		if (FUNC15(jiffies, end_jiffies)) {
			FUNC11("cp queue preemption time out.\n");
			FUNC14(kgd);
			return -ETIME;
		}
		FUNC16(500, 1000);
	}

	FUNC14(kgd);
	return 0;
}