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
 int /*<<< orphan*/  GC ; 
 int RLC_CNTL__RLC_ENABLE_F32_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_CNTL ; 

__attribute__((used)) static bool FUNC1(struct amdgpu_device *adev)
{
	uint32_t rlc_setting;

	/* if RLC is not enabled, do nothing */
	rlc_setting = FUNC0(GC, 0, mmRLC_CNTL);
	if (!(rlc_setting & RLC_CNTL__RLC_ENABLE_F32_MASK))
		return false;

	return true;
}