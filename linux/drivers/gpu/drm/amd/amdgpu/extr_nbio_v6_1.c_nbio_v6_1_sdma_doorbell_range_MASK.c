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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIF_SDMA0_DOORBELL_RANGE ; 
 int /*<<< orphan*/  NBIO ; 
 int /*<<< orphan*/  OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIF_SDMA0_DOORBELL_RANGE ; 
 int /*<<< orphan*/  mmBIF_SDMA1_DOORBELL_RANGE ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev, int instance,
			bool use_doorbell, int doorbell_index, int doorbell_size)
{
	u32 reg = instance == 0 ? FUNC2(NBIO, 0, mmBIF_SDMA0_DOORBELL_RANGE) :
			FUNC2(NBIO, 0, mmBIF_SDMA1_DOORBELL_RANGE);

	u32 doorbell_range = FUNC1(reg);

	if (use_doorbell) {
		doorbell_range = FUNC0(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, OFFSET, doorbell_index);
		doorbell_range = FUNC0(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, SIZE, doorbell_size);
	} else
		doorbell_range = FUNC0(doorbell_range, BIF_SDMA0_DOORBELL_RANGE, SIZE, 0);

	FUNC3(reg, doorbell_range);

}