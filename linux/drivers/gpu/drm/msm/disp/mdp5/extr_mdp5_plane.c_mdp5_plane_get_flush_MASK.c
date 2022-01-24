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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct mdp5_plane_state {TYPE_2__* r_hwpipe; TYPE_1__* hwpipe; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  flush_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  flush_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct mdp5_plane_state* FUNC1 (int /*<<< orphan*/ ) ; 

uint32_t FUNC2(struct drm_plane *plane)
{
	struct mdp5_plane_state *pstate = FUNC1(plane->state);
	u32 mask;

	if (FUNC0(!pstate->hwpipe))
		return 0;

	mask = pstate->hwpipe->flush_mask;

	if (pstate->r_hwpipe)
		mask |= pstate->r_hwpipe->flush_mask;

	return mask;
}