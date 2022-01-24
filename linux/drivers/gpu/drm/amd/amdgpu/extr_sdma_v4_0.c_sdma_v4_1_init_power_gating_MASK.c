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
typedef  int uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA0 ; 
 int SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK ; 
 int SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK ; 
 int SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK ; 
 int SDMA0_POWER_CNTL__PG_CNTL_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmSDMA0_CNTL ; 
 int /*<<< orphan*/  mmSDMA0_POWER_CNTL ; 
 int mmSDMA0_POWER_CNTL_DEFAULT ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	uint32_t def, data;

	/* Enable HW based PG. */
	def = data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_POWER_CNTL));
	data |= SDMA0_POWER_CNTL__PG_CNTL_ENABLE_MASK;
	if (data != def)
		FUNC2(FUNC1(SDMA0, 0, mmSDMA0_POWER_CNTL), data);

	/* enable interrupt */
	def = data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_CNTL));
	data |= SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK;
	if (data != def)
		FUNC2(FUNC1(SDMA0, 0, mmSDMA0_CNTL), data);

	/* Configure hold time to filter in-valid power on/off request. Use default right now */
	def = data = FUNC0(FUNC1(SDMA0, 0, mmSDMA0_POWER_CNTL));
	data &= ~SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK;
	data |= (mmSDMA0_POWER_CNTL_DEFAULT & SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK);
	/* Configure switch time for hysteresis purpose. Use default right now */
	data &= ~SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK;
	data |= (mmSDMA0_POWER_CNTL_DEFAULT & SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK);
	if(data != def)
		FUNC2(FUNC1(SDMA0, 0, mmSDMA0_POWER_CNTL), data);
}