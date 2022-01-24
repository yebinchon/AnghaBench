#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct si_ps {int performance_level_count; TYPE_1__* performance_levels; } ;
struct amdgpu_ps {scalar_t__ vclk; scalar_t__ dclk; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ sclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,scalar_t__,scalar_t__) ; 
 struct si_ps* FUNC1 (struct amdgpu_ps*) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
					   struct amdgpu_ps *new_ps,
					   struct amdgpu_ps *old_ps)
{
	struct si_ps *new_state = FUNC1(new_ps);
	struct si_ps *current_state = FUNC1(old_ps);

	if ((new_ps->vclk == old_ps->vclk) &&
	    (new_ps->dclk == old_ps->dclk))
		return;

	if (new_state->performance_levels[new_state->performance_level_count - 1].sclk >=
	    current_state->performance_levels[current_state->performance_level_count - 1].sclk)
		return;

	FUNC0(adev, new_ps->vclk, new_ps->dclk);
}