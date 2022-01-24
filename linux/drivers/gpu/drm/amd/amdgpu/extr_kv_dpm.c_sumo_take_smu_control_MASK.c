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
typedef  int u32 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmDOUT_SCRATCH3 ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev, bool enable)
{
/* This bit selects who handles display phy powergating.
 * Clear the bit to let atom handle it.
 * Set it to let the driver handle it.
 * For now we just let atom handle it.
 */
#if 0
	u32 v = RREG32(mmDOUT_SCRATCH3);

	if (enable)
		v |= 0x4;
	else
		v &= 0xFFFFFFFB;

	WREG32(mmDOUT_SCRATCH3, v);
#endif
}