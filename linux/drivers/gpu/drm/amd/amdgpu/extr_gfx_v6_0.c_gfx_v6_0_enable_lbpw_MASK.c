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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOAD_BALANCE_ENABLE ; 
 int /*<<< orphan*/  RLC_LB_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int,int,int) ; 
 int /*<<< orphan*/  mmSPI_LB_CU_MASK ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev, bool enable)
{
	FUNC1(RLC_LB_CNTL, LOAD_BALANCE_ENABLE, enable ? 1 : 0);

	if (!enable) {
		FUNC2(adev, 0xffffffff, 0xffffffff, 0xffffffff);
		FUNC0(mmSPI_LB_CU_MASK, 0x00ff);
	}
}