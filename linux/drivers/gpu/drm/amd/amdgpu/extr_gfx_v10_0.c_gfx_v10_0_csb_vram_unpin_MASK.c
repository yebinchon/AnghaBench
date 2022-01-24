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
struct TYPE_3__ {int /*<<< orphan*/  clear_state_obj; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	int r;

	if (!adev->gfx.rlc.clear_state_obj)
		return;

	r = FUNC0(adev->gfx.rlc.clear_state_obj, true);
	if (FUNC3(r == 0)) {
		FUNC1(adev->gfx.rlc.clear_state_obj);
		FUNC2(adev->gfx.rlc.clear_state_obj);
	}
}