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
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_HDP_LS ; 
 int /*<<< orphan*/  HDP_MEM_POWER_LS ; 
 int /*<<< orphan*/  LS_ENABLE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmHDP_MEM_POWER_LS ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
				   bool enable)
{
	u32 orig, data;

	orig = data = FUNC1(mmHDP_MEM_POWER_LS);

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_HDP_LS))
		data = FUNC0(data, HDP_MEM_POWER_LS, LS_ENABLE, 1);
	else
		data = FUNC0(data, HDP_MEM_POWER_LS, LS_ENABLE, 0);

	if (orig != data)
		FUNC2(mmHDP_MEM_POWER_LS, data);
}