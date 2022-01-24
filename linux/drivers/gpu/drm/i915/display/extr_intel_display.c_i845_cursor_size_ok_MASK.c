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
struct TYPE_2__ {int crtc_w; } ;
struct intel_plane_state {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct intel_plane_state const*) ; 

__attribute__((used)) static bool FUNC2(const struct intel_plane_state *plane_state)
{
	int width = plane_state->base.crtc_w;

	/*
	 * 845g/865g are only limited by the width of their cursors,
	 * the height is arbitrary up to the precision of the register.
	 */
	return FUNC1(plane_state) && FUNC0(width, 64);
}