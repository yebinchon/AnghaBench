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
struct amdgpu_device {int pg_flags; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_GFX_SMG ; 
 int /*<<< orphan*/  RLC_PG_CNTL__STATIC_PER_CU_PG_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_PG_CNTL ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
					    bool enable)
{
	u32 data, orig;

	orig = data = FUNC0(mmRLC_PG_CNTL);
	if (enable && (adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG))
		data |= RLC_PG_CNTL__STATIC_PER_CU_PG_ENABLE_MASK;
	else
		data &= ~RLC_PG_CNTL__STATIC_PER_CU_PG_ENABLE_MASK;
	if (orig != data)
		FUNC1(mmRLC_PG_CNTL, data);
}