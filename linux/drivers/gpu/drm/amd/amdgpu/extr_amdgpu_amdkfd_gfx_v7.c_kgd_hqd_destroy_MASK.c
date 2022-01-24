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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kgd_dev*,int,int) ; 
 struct amdgpu_device* FUNC4 (struct kgd_dev*) ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  mmCP_HQD_ACTIVE ; 
 int /*<<< orphan*/  mmCP_HQD_DEQUEUE_REQUEST ; 
 int /*<<< orphan*/  mmCP_HQD_IQ_TIMER ; 
 int /*<<< orphan*/  mmCP_HQD_PQ_DOORBELL_CONTROL ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct kgd_dev*) ; 
 scalar_t__ FUNC13 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static int FUNC15(struct kgd_dev *kgd, void *mqd,
				enum kfd_preempt_type reset_type,
				unsigned int utimeout, uint32_t pipe_id,
				uint32_t queue_id)
{
	struct amdgpu_device *adev = FUNC4(kgd);
	uint32_t temp;
	enum hqd_dequeue_request_type type;
	unsigned long flags, end_jiffies;
	int retry;

	if (adev->in_gpu_reset)
		return -EIO;

	FUNC3(kgd, pipe_id, queue_id);
	FUNC2(mmCP_HQD_PQ_DOORBELL_CONTROL, 0);

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
	FUNC6(flags);
	FUNC10();
	retry = 5000; /* wait for 500 usecs at maximum */
	while (true) {
		temp = FUNC1(mmCP_HQD_IQ_TIMER);
		if (FUNC0(temp, CP_HQD_IQ_TIMER, PROCESSING_IQ)) {
			FUNC8("HW is processing IQ\n");
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
			FUNC8("IQ timer is active\n");
		} else
			break;
loop:
		if (!retry) {
			FUNC9("CP HQD IQ timer status time out\n");
			break;
		}
		FUNC7(100);
		--retry;
	}
	retry = 1000;
	while (true) {
		temp = FUNC1(mmCP_HQD_DEQUEUE_REQUEST);
		if (!(temp & CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK))
			break;
		FUNC8("Dequeue request is pending\n");

		if (!retry) {
			FUNC9("CP HQD dequeue request time out\n");
			break;
		}
		FUNC7(100);
		--retry;
	}
	FUNC5(flags);
	FUNC11();

	FUNC2(mmCP_HQD_DEQUEUE_REQUEST, type);

	end_jiffies = (utimeout * HZ / 1000) + jiffies;
	while (true) {
		temp = FUNC1(mmCP_HQD_ACTIVE);
		if (!(temp & CP_HQD_ACTIVE__ACTIVE_MASK))
			break;
		if (FUNC13(jiffies, end_jiffies)) {
			FUNC9("cp queue preemption time out\n");
			FUNC12(kgd);
			return -ETIME;
		}
		FUNC14(500, 1000);
	}

	FUNC12(kgd);
	return 0;
}