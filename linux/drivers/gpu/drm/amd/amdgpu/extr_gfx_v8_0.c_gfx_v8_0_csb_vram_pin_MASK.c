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
struct TYPE_4__ {int /*<<< orphan*/  clear_state_obj; int /*<<< orphan*/  clear_state_gpu_addr; } ;
struct TYPE_3__ {TYPE_2__ rlc; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	int r;

	r = FUNC2(adev->gfx.rlc.clear_state_obj, false);
	if (FUNC4(r != 0))
		return r;

	r = FUNC1(adev->gfx.rlc.clear_state_obj,
			AMDGPU_GEM_DOMAIN_VRAM);
	if (!r)
		adev->gfx.rlc.clear_state_gpu_addr =
			FUNC0(adev->gfx.rlc.clear_state_obj);

	FUNC3(adev->gfx.rlc.clear_state_obj);

	return r;
}