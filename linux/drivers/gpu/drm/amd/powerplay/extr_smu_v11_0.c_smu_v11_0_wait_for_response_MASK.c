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
typedef  scalar_t__ uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  MP1 ; 
 scalar_t__ MP1_C2PMSG_90__CONTENT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP1_SMN_C2PMSG_90 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct smu_context *smu)
{
	struct amdgpu_device *adev = smu->adev;
	uint32_t cur_value, i, timeout = adev->usec_timeout * 10;

	for (i = 0; i < timeout; i++) {
		cur_value = FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_90);
		if ((cur_value & MP1_C2PMSG_90__CONTENT_MASK) != 0)
			break;
		FUNC1(1);
	}

	/* timeout means wrong logic */
	if (i == timeout)
		return -ETIME;

	return FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_90) == 0x1 ? 0 : -EIO;
}