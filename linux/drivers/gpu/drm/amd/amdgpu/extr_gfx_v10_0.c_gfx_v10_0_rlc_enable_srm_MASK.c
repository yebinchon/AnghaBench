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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  RLC_SRM_CNTL__AUTO_INCR_ADDR_MASK ; 
 int /*<<< orphan*/  RLC_SRM_CNTL__SRM_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_SRM_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	uint32_t tmp;

	/* enable Save Restore Machine */
	tmp = FUNC0(FUNC1(GC, 0, mmRLC_SRM_CNTL));
	tmp |= RLC_SRM_CNTL__AUTO_INCR_ADDR_MASK;
	tmp |= RLC_SRM_CNTL__SRM_ENABLE_MASK;
	FUNC2(FUNC1(GC, 0, mmRLC_SRM_CNTL), tmp);
}