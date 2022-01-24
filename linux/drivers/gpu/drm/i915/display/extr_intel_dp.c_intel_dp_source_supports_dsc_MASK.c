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
struct intel_dp {int dummy; } ;
struct intel_crtc_state {scalar_t__ cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ TRANSCODER_A ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 

__attribute__((used)) static bool FUNC2(struct intel_dp *intel_dp,
					 const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);

	return FUNC0(dev_priv) >= 10 &&
		pipe_config->cpu_transcoder != TRANSCODER_A;
}