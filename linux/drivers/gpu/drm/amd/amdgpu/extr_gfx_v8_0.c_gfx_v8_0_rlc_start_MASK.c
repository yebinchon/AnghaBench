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
struct amdgpu_device {int flags; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  RLC_CNTL ; 
 int /*<<< orphan*/  RLC_ENABLE_F32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	FUNC0(RLC_CNTL, RLC_ENABLE_F32, 1);

	/* carrizo do enable cp interrupt after cp inited */
	if (!(adev->flags & AMD_IS_APU))
		FUNC1(adev, true);

	FUNC2(50);
}