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
typedef  void* u64 ;
struct omap_drm_private {struct drm_property* zorder_prop; } ;
struct drm_property {int dummy; } ;
struct drm_plane_state {void* zpos; void* rotation; } ;
struct drm_crtc_state {int /*<<< orphan*/  state; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__* dev; } ;
struct TYPE_4__ {struct drm_property* rotation_property; } ;
struct TYPE_3__ {struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_plane_state*) ; 
 int FUNC1 (struct drm_plane_state*) ; 
 struct drm_plane_state* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct drm_crtc *crtc,
					 struct drm_crtc_state *state,
					 struct drm_property *property,
					 u64 val)
{
	struct omap_drm_private *priv = crtc->dev->dev_private;
	struct drm_plane_state *plane_state;

	/*
	 * Delegate property set to the primary plane. Get the plane state and
	 * set the property directly, the shadow copy will be assigned in the
	 * omap_crtc_atomic_check callback. This way updates to plane state will
	 * always be mirrored in the crtc state correctly.
	 */
	plane_state = FUNC2(state->state, crtc->primary);
	if (FUNC0(plane_state))
		return FUNC1(plane_state);

	if (property == crtc->primary->rotation_property)
		plane_state->rotation = val;
	else if (property == priv->zorder_prop)
		plane_state->zpos = val;
	else
		return -EINVAL;

	return 0;
}