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
struct TYPE_2__ {scalar_t__ vddc; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct rv6xx_ps* FUNC0 (struct radeon_ps*) ; 
 int FUNC1 (struct radeon_device*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev,
					    struct radeon_ps *new_ps,
					    struct radeon_ps *old_ps)
{
	struct rv6xx_ps *new_state = FUNC0(new_ps);
	struct rv6xx_ps *old_state = FUNC0(old_ps);

	if (new_state->low.vddc < old_state->low.vddc)
		return FUNC1(rdev,
					     old_state->low.vddc,
					     new_state->low.vddc);
	else
		return 0;
}