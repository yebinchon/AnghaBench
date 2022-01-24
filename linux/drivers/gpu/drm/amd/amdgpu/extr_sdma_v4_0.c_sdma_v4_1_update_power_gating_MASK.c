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
struct amdgpu_device {int pg_flags; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_SDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0 ; 
 int /*<<< orphan*/  SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSDMA0_CNTL ; 

__attribute__((used)) static void
FUNC3(struct amdgpu_device *adev, bool enable)
{
	uint32_t def, data;

	if (enable && (adev->pg_flags & AMD_PG_SUPPORT_SDMA)) {
		/* enable idle interrupt */
		def = data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_CNTL));
		data |= SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK;

		if (data != def)
			FUNC2(FUNC1(SDMA0, 0, mmSDMA0_CNTL), data);
	} else {
		/* disable idle interrupt */
		def = data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_CNTL));
		data &= ~SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK;
		if (data != def)
			FUNC2(FUNC1(SDMA0, 0, mmSDMA0_CNTL), data);
	}
}