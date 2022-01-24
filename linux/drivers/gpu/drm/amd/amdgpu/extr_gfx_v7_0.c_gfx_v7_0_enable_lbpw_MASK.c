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
 int /*<<< orphan*/  RLC_LB_CNTL__LOAD_BALANCE_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_LB_CNTL ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev, bool enable)
{
	u32 tmp;

	tmp = FUNC0(mmRLC_LB_CNTL);
	if (enable)
		tmp |= RLC_LB_CNTL__LOAD_BALANCE_ENABLE_MASK;
	else
		tmp &= ~RLC_LB_CNTL__LOAD_BALANCE_ENABLE_MASK;
	FUNC1(mmRLC_LB_CNTL, tmp);
}