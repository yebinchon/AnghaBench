#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int max_backends_per_se; int max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKEND_DISABLE ; 
 int /*<<< orphan*/  GC_USER_RB_BACKEND_DISABLE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  mmCC_RB_BACKEND_DISABLE ; 
 int /*<<< orphan*/  mmGC_USER_RB_BACKEND_DISABLE ; 

__attribute__((used)) static u32 FUNC3(struct amdgpu_device *adev)
{
	u32 data, mask;

	data = FUNC1(mmCC_RB_BACKEND_DISABLE) |
		FUNC1(mmGC_USER_RB_BACKEND_DISABLE);

	data = FUNC0(data, GC_USER_RB_BACKEND_DISABLE, BACKEND_DISABLE);

	mask = FUNC2(adev->gfx.config.max_backends_per_se/
					 adev->gfx.config.max_sh_per_se);

	return ~data & mask;
}