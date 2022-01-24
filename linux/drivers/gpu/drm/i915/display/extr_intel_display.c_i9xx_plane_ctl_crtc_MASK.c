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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ csc_enable; scalar_t__ gamma_enable; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPPLANE_GAMMA_ENABLE ; 
 int /*<<< orphan*/  DISPPLANE_PIPE_CSC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC3(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC2(crtc->base.dev);
	u32 dspcntr = 0;

	if (crtc_state->gamma_enable)
		dspcntr |= DISPPLANE_GAMMA_ENABLE;

	if (crtc_state->csc_enable)
		dspcntr |= DISPPLANE_PIPE_CSC_ENABLE;

	if (FUNC1(dev_priv) < 5)
		dspcntr |= FUNC0(crtc->pipe);

	return dspcntr;
}