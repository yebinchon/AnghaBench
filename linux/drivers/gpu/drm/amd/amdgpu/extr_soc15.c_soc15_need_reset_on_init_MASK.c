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
struct amdgpu_device {int flags; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  MP0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_81 ; 

__attribute__((used)) static bool FUNC2(struct amdgpu_device *adev)
{
	u32 sol_reg;

	/* Just return false for soc15 GPUs.  Reset does not seem to
	 * be necessary.
	 */
	if (!FUNC1(adev))
		return false;

	if (adev->flags & AMD_IS_APU)
		return false;

	/* Check sOS sign of life register to confirm sys driver and sOS
	 * are already been loaded.
	 */
	sol_reg = FUNC0(MP0, 0, mmMP0_SMN_C2PMSG_81);
	if (sol_reg)
		return true;

	return false;
}