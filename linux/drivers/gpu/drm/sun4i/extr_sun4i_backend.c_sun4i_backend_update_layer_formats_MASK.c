#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  regs; } ;
struct sun4i_backend {TYPE_5__ engine; } ;
struct drm_plane_state {int alpha; TYPE_3__* crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {TYPE_4__* format; } ;
struct TYPE_9__ {int /*<<< orphan*/  format; scalar_t__ is_yuv; } ;
struct TYPE_8__ {TYPE_2__* state; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ adjusted_mode; } ;

/* Variables and functions */
 int DRM_BLEND_ALPHA_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN ; 
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_MASK ; 
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT ; 
 int SUN4I_BACKEND_MODCTL_ITLMOD_EN ; 
 int /*<<< orphan*/  SUN4I_BACKEND_MODCTL_REG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct sun4i_backend*,int,struct drm_plane*) ; 

int FUNC7(struct sun4i_backend *backend,
				       int layer, struct drm_plane *plane)
{
	struct drm_plane_state *state = plane->state;
	struct drm_framebuffer *fb = state->fb;
	bool interlaced = false;
	u32 val;
	int ret;

	/* Clear the YUV mode */
	FUNC4(backend->engine.regs, FUNC1(layer),
			   SUN4I_BACKEND_ATTCTL_REG0_LAY_YUVEN, 0);

	if (plane->state->crtc)
		interlaced = plane->state->crtc->state->adjusted_mode.flags
			& DRM_MODE_FLAG_INTERLACE;

	FUNC4(backend->engine.regs, SUN4I_BACKEND_MODCTL_REG,
			   SUN4I_BACKEND_MODCTL_ITLMOD_EN,
			   interlaced ? SUN4I_BACKEND_MODCTL_ITLMOD_EN : 0);

	FUNC0("Switching display backend interlaced mode %s\n",
			 interlaced ? "on" : "off");

	val = FUNC2(state->alpha >> 8);
	if (state->alpha != DRM_BLEND_ALPHA_OPAQUE)
		val |= SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN;
	FUNC4(backend->engine.regs,
			   FUNC1(layer),
			   SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_MASK |
			   SUN4I_BACKEND_ATTCTL_REG0_LAY_GLBALPHA_EN,
			   val);

	if (fb->format->is_yuv)
		return FUNC6(backend, layer, plane);

	ret = FUNC5(fb->format->format, &val);
	if (ret) {
		FUNC0("Invalid format\n");
		return ret;
	}

	FUNC4(backend->engine.regs,
			   FUNC3(layer),
			   SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT, val);

	return 0;
}