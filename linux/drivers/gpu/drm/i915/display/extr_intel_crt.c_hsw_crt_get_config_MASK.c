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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  crtc_clock; } ;
struct TYPE_6__ {TYPE_2__ adjusted_mode; } ;
struct intel_crtc_state {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_NVSYNC ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int FUNC0 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_encoder *encoder,
			       struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC3(encoder->base.dev);

	FUNC1(encoder, pipe_config);

	pipe_config->base.adjusted_mode.flags &= ~(DRM_MODE_FLAG_PHSYNC |
					      DRM_MODE_FLAG_NHSYNC |
					      DRM_MODE_FLAG_PVSYNC |
					      DRM_MODE_FLAG_NVSYNC);
	pipe_config->base.adjusted_mode.flags |= FUNC0(encoder);

	pipe_config->base.adjusted_mode.crtc_clock = FUNC2(dev_priv);
}