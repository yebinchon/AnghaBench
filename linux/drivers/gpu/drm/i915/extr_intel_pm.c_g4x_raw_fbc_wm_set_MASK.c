#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_8__ {struct g4x_pipe_wm* raw; } ;
struct TYPE_5__ {TYPE_4__ g4x; } ;
struct TYPE_7__ {TYPE_2__* crtc; } ;
struct intel_crtc_state {TYPE_1__ wm; TYPE_3__ base; } ;
struct g4x_pipe_wm {scalar_t__ fbc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  G4X_WM_LEVEL_SR ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct intel_crtc_state *crtc_state,
			       int level, u16 value)
{
	struct drm_i915_private *dev_priv = FUNC2(crtc_state->base.crtc->dev);
	bool dirty = false;

	/* NORMAL level doesn't have an FBC watermark */
	level = FUNC1(level, G4X_WM_LEVEL_SR);

	for (; level < FUNC0(dev_priv); level++) {
		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];

		dirty |= raw->fbc != value;
		raw->fbc = value;
	}

	return dirty;
}