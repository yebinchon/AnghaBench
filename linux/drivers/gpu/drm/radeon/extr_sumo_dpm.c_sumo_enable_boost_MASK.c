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
struct sumo_ps {int flags; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int SUMO_POWERSTATE_FLAGS_BOOST_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 struct sumo_ps* FUNC1 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
			      struct radeon_ps *rps,
			      bool enable)
{
	struct sumo_ps *new_ps = FUNC1(rps);

	if (enable) {
		if (new_ps->flags & SUMO_POWERSTATE_FLAGS_BOOST_STATE)
			FUNC0(rdev, true);
	} else
		FUNC0(rdev, false);
}