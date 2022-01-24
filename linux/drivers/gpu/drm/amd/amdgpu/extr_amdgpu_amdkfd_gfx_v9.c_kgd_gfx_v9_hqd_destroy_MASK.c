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
struct v9_mqd {scalar_t__ cp_hqd_vmid; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {scalar_t__ in_gpu_reset; } ;
typedef  enum kfd_preempt_type { ____Placeholder_kfd_preempt_type } kfd_preempt_type ;
typedef  enum hqd_dequeue_request_type { ____Placeholder_hqd_dequeue_request_type } hqd_dequeue_request_type ;

/* Variables and functions */
 int CP_HQD_ACTIVE__ACTIVE_MASK ; 
 int DRAIN_PIPE ; 
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  GC ; 
 unsigned int HZ ; 
#define  KFD_PREEMPT_TYPE_WAVEFRONT_DRAIN 129 
#define  KFD_PREEMPT_TYPE_WAVEFRONT_RESET 128 
 int RESET_WAVES ; 
 int /*<<< orphan*/  RLC_CP_SCHEDULERS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kgd_dev*,int,int) ; 
 struct amdgpu_device* FUNC5 (struct kgd_dev*) ; 
 struct v9_mqd* FUNC6 (void*) ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  mmCP_HQD_ACTIVE ; 
 int /*<<< orphan*/  mmCP_HQD_DEQUEUE_REQUEST ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct kgd_dev*) ; 
 int /*<<< orphan*/  scheduler1 ; 
 scalar_t__ FUNC9 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

int FUNC11(struct kgd_dev *kgd, void *mqd,
				enum kfd_preempt_type reset_type,
				unsigned int utimeout, uint32_t pipe_id,
				uint32_t queue_id)
{
	struct amdgpu_device *adev = FUNC5(kgd);
	enum hqd_dequeue_request_type type;
	unsigned long end_jiffies;
	uint32_t temp;
	struct v9_mqd *m = FUNC6(mqd);

	if (adev->in_gpu_reset)
		return -EIO;

	FUNC4(kgd, pipe_id, queue_id);

	if (m->cp_hqd_vmid == 0)
		FUNC2(GC, 0, RLC_CP_SCHEDULERS, scheduler1, 0);

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

	FUNC3(FUNC1(GC, 0, mmCP_HQD_DEQUEUE_REQUEST), type);

	end_jiffies = (utimeout * HZ / 1000) + jiffies;
	while (true) {
		temp = FUNC0(FUNC1(GC, 0, mmCP_HQD_ACTIVE));
		if (!(temp & CP_HQD_ACTIVE__ACTIVE_MASK))
			break;
		if (FUNC9(jiffies, end_jiffies)) {
			FUNC7("cp queue preemption time out.\n");
			FUNC8(kgd);
			return -ETIME;
		}
		FUNC10(500, 1000);
	}

	FUNC8(kgd);
	return 0;
}