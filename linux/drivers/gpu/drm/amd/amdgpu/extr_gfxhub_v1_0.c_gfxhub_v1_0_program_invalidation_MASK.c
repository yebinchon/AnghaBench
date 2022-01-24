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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  mmVM_INVALIDATE_ENG0_ADDR_RANGE_HI32 ; 
 int /*<<< orphan*/  mmVM_INVALIDATE_ENG0_ADDR_RANGE_LO32 ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev)
{
	unsigned i;

	for (i = 0 ; i < 18; ++i) {
		FUNC0(GC, 0, mmVM_INVALIDATE_ENG0_ADDR_RANGE_LO32,
				    2 * i, 0xffffffff);
		FUNC0(GC, 0, mmVM_INVALIDATE_ENG0_ADDR_RANGE_HI32,
				    2 * i, 0x1f);
	}
}