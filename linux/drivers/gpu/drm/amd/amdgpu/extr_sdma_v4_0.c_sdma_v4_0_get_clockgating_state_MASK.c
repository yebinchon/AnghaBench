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
 int /*<<< orphan*/  AMD_CG_SUPPORT_SDMA_LS ; 
 int /*<<< orphan*/  AMD_CG_SUPPORT_SDMA_MGCG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0 ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK ; 
 int SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmSDMA0_CLK_CTRL ; 
 int /*<<< orphan*/  mmSDMA0_POWER_CNTL ; 

__attribute__((used)) static void FUNC3(void *handle, u32 *flags)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int data;

	if (FUNC2(adev))
		*flags = 0;

	/* AMD_CG_SUPPORT_SDMA_MGCG */
	data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_CLK_CTRL));
	if (!(data & SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK))
		*flags |= AMD_CG_SUPPORT_SDMA_MGCG;

	/* AMD_CG_SUPPORT_SDMA_LS */
	data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_POWER_CNTL));
	if (data & SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK)
		*flags |= AMD_CG_SUPPORT_SDMA_LS;
}