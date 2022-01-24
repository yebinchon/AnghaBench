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
typedef  scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIF_SDMA0_DOORBELL_RANGE ; 
 int /*<<< orphan*/  NBIO ; 
 int /*<<< orphan*/  OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  mmBIF_SDMA0_DOORBELL_RANGE ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev, int instance,
			bool use_doorbell, int doorbell_index, int doorbell_size)
{
	u32 reg, doorbell_range;

	if (instance < 2)
		reg = instance +
			FUNC2(NBIO, 0, mmBIF_SDMA0_DOORBELL_RANGE);
	else
		/*
		 * These registers address of SDMA2~7 is not consecutive
		 * from SDMA0~1. Need plus 4 dwords offset.
		 *
		 *   BIF_SDMA0_DOORBELL_RANGE:  0x3bc0
		 *   BIF_SDMA1_DOORBELL_RANGE:  0x3bc4
		 *   BIF_SDMA2_DOORBELL_RANGE:  0x3bd8
		 */
		reg = instance + 0x4 +
			FUNC2(NBIO, 0, mmBIF_SDMA0_DOORBELL_RANGE);

	doorbell_range = FUNC1(reg);

	if (use_doorbell) {
		doorbell_range = FUNC0(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, OFFSET, doorbell_index);
		doorbell_range = FUNC0(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, SIZE, doorbell_size);
	} else
		doorbell_range = FUNC0(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, SIZE, 0);

	FUNC3(reg, doorbell_range);
}