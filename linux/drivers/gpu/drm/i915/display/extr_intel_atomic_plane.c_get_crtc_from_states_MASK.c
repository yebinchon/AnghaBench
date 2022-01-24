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
struct TYPE_2__ {scalar_t__ crtc; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;

/* Variables and functions */
 struct intel_crtc* FUNC0 (scalar_t__) ; 

__attribute__((used)) static struct intel_crtc *
FUNC1(const struct intel_plane_state *old_plane_state,
		     const struct intel_plane_state *new_plane_state)
{
	if (new_plane_state->base.crtc)
		return FUNC0(new_plane_state->base.crtc);

	if (old_plane_state->base.crtc)
		return FUNC0(old_plane_state->base.crtc);

	return NULL;
}