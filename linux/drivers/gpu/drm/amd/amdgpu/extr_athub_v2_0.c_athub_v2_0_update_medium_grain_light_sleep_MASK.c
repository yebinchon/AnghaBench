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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_HDP_LS ; 
 int AMD_CG_SUPPORT_MC_LS ; 
 int /*<<< orphan*/  ATHUB ; 
 int /*<<< orphan*/  ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmATHUB_MISC_CNTL ; 

__attribute__((used)) static void
FUNC2(struct amdgpu_device *adev,
					   bool enable)
{
	uint32_t def, data;

	def = data = FUNC0(ATHUB, 0, mmATHUB_MISC_CNTL);

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_LS) &&
	    (adev->cg_flags & AMD_CG_SUPPORT_HDP_LS))
		data |= ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK;
	else
		data &= ~ATHUB_MISC_CNTL__CG_MEM_LS_ENABLE_MASK;

	if (def != data)
		FUNC1(ATHUB, 0, mmATHUB_MISC_CNTL, data);
}