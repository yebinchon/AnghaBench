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
struct TYPE_2__ {int flags; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE ; 
 int /*<<< orphan*/  BACKBIAS_VALUE ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rv6xx_ps* FUNC1 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
				    struct radeon_ps *new_ps,
				    struct radeon_ps *old_ps)
{
	struct rv6xx_ps *new_state = FUNC1(new_ps);
	struct rv6xx_ps *old_state = FUNC1(old_ps);

	if ((new_state->low.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) &&
	    (old_state->low.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE))
		FUNC0(GENERAL_PWRMGT, BACKBIAS_VALUE, ~BACKBIAS_VALUE);
	else
		FUNC0(GENERAL_PWRMGT, 0, ~BACKBIAS_VALUE);
}