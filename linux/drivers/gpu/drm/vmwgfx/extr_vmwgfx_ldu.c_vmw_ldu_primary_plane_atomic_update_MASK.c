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
struct vmw_private {int dummy; } ;
struct vmw_legacy_display_unit {int dummy; } ;
struct vmw_framebuffer {int dummy; } ;
struct drm_plane_state {struct drm_crtc* crtc; } ;
struct drm_plane {TYPE_1__* state; int /*<<< orphan*/  dev; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {struct drm_framebuffer* fb; int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 struct vmw_legacy_display_unit* FUNC0 (struct drm_crtc*) ; 
 struct vmw_framebuffer* FUNC1 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*,struct vmw_legacy_display_unit*,struct vmw_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,struct vmw_legacy_display_unit*) ; 
 struct vmw_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct drm_plane *plane,
				    struct drm_plane_state *old_state)
{
	struct vmw_private *dev_priv;
	struct vmw_legacy_display_unit *ldu;
	struct vmw_framebuffer *vfb;
	struct drm_framebuffer *fb;
	struct drm_crtc *crtc = plane->state->crtc ?: old_state->crtc;


	ldu = FUNC0(crtc);
	dev_priv = FUNC5(plane->dev);
	fb       = plane->state->fb;

	vfb = (fb) ? FUNC1(fb) : NULL;

	if (vfb)
		FUNC2(dev_priv, ldu, vfb);
	else
		FUNC4(dev_priv, ldu);

	FUNC3(dev_priv);
}