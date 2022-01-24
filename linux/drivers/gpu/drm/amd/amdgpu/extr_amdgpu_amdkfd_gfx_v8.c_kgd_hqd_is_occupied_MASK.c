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
typedef  scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kgd_dev*,scalar_t__,scalar_t__) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  mmCP_HQD_ACTIVE ; 
 int /*<<< orphan*/  mmCP_HQD_PQ_BASE ; 
 int /*<<< orphan*/  mmCP_HQD_PQ_BASE_HI ; 
 int /*<<< orphan*/  FUNC4 (struct kgd_dev*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct kgd_dev *kgd, uint64_t queue_address,
				uint32_t pipe_id, uint32_t queue_id)
{
	struct amdgpu_device *adev = FUNC2(kgd);
	uint32_t act;
	bool retval = false;
	uint32_t low, high;

	FUNC1(kgd, pipe_id, queue_id);
	act = FUNC0(mmCP_HQD_ACTIVE);
	if (act) {
		low = FUNC3(queue_address >> 8);
		high = FUNC5(queue_address >> 8);

		if (low == FUNC0(mmCP_HQD_PQ_BASE) &&
				high == FUNC0(mmCP_HQD_PQ_BASE_HI))
			retval = true;
	}
	FUNC4(kgd);
	return retval;
}