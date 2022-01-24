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
struct TYPE_2__ {int kiq; int mec_ring7; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ doorbell_index; } ;

/* Variables and functions */
 scalar_t__ CHIP_TONGA ; 
 int /*<<< orphan*/  CP_PQ_STATUS ; 
 int /*<<< orphan*/  DOORBELL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmCP_MEC_DOORBELL_RANGE_LOWER ; 
 int /*<<< orphan*/  mmCP_MEC_DOORBELL_RANGE_UPPER ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	if (adev->asic_type > CHIP_TONGA) {
		FUNC0(mmCP_MEC_DOORBELL_RANGE_LOWER, adev->doorbell_index.kiq << 2);
		FUNC0(mmCP_MEC_DOORBELL_RANGE_UPPER, adev->doorbell_index.mec_ring7 << 2);
	}
	/* enable doorbells */
	FUNC1(CP_PQ_STATUS, DOORBELL_ENABLE, 1);
}