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
typedef  int u32 ;
struct sumo_ps {int flags; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE ; 
 struct sumo_ps* FUNC0 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
					     struct radeon_ps *new_rps,
					     struct radeon_ps *old_rps)
{
	struct sumo_ps *new_ps = FUNC0(new_rps);
	struct sumo_ps *old_ps = FUNC0(old_rps);
	u32 nbps1_old = 0;
	u32 nbps1_new = 0;

	if (old_ps != NULL)
		nbps1_old = (old_ps->flags & SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE) ? 1 : 0;

	nbps1_new = (new_ps->flags & SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE) ? 1 : 0;

	if (nbps1_old == 1 && nbps1_new == 0)
		FUNC1(rdev, 0, 0);
}