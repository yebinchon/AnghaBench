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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  RLC_CNTL ; 
 int /*<<< orphan*/  RLC_ENABLE_F32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 

void FUNC3(struct amdgpu_device *adev)
{
	FUNC0(GC, 0, RLC_CNTL, RLC_ENABLE_F32, 0);
	FUNC1(adev, false);
	FUNC2(adev);
}