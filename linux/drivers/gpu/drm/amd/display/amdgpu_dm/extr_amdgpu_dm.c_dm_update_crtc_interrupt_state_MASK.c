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
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct dm_crtc_state {scalar_t__ active_planes; int interrupts_enabled; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 struct dm_crtc_state* FUNC1 (struct drm_crtc_state*) ; 

__attribute__((used)) static void
FUNC2(struct drm_crtc *crtc,
			       struct drm_crtc_state *new_crtc_state)
{
	struct dm_crtc_state *dm_new_crtc_state =
		FUNC1(new_crtc_state);

	dm_new_crtc_state->active_planes = 0;
	dm_new_crtc_state->interrupts_enabled = false;

	if (!dm_new_crtc_state->stream)
		return;

	dm_new_crtc_state->active_planes =
		FUNC0(new_crtc_state);

	dm_new_crtc_state->interrupts_enabled =
		dm_new_crtc_state->active_planes > 0;
}