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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int /*<<< orphan*/  cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int VIDEO_DIP_ENABLE_AVI_HSW ; 
 int VIDEO_DIP_ENABLE_DRM_GLK ; 
 int VIDEO_DIP_ENABLE_GCP_HSW ; 
 int VIDEO_DIP_ENABLE_GMP_HSW ; 
 int VIDEO_DIP_ENABLE_SPD_HSW ; 
 int VIDEO_DIP_ENABLE_VSC_HSW ; 
 int VIDEO_DIP_ENABLE_VS_HSW ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct intel_encoder *encoder,
				  const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC4(encoder->base.dev);
	u32 val = FUNC1(FUNC0(pipe_config->cpu_transcoder));
	u32 mask;

	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);

	if (FUNC2(dev_priv) >= 10 || FUNC3(dev_priv))
		mask |= VIDEO_DIP_ENABLE_DRM_GLK;

	return val & mask;
}