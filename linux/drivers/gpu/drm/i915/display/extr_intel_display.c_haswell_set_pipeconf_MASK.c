#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_2__ base; scalar_t__ dither; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PIPECONF_DITHER_EN ; 
 int PIPECONF_DITHER_TYPE_SP ; 
 int PIPECONF_INTERLACED_ILK ; 
 int PIPECONF_PROGRESSIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC5(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	u32 val = 0;

	if (FUNC1(dev_priv) && crtc_state->dither)
		val |= (PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP);

	if (crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
		val |= PIPECONF_INTERLACED_ILK;
	else
		val |= PIPECONF_PROGRESSIVE;

	FUNC0(FUNC2(cpu_transcoder), val);
	FUNC3(FUNC2(cpu_transcoder));
}