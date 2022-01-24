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
struct intel_encoder {int port; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct intel_encoder* FUNC5 (struct intel_crtc*) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC7(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	struct intel_encoder *encoder = FUNC5(crtc);
	enum port port = encoder->port;
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;

	if (cpu_transcoder != TRANSCODER_EDP) {
		if (FUNC1(dev_priv) >= 12)
			FUNC0(FUNC3(cpu_transcoder),
				   FUNC2(port));
		else
			FUNC0(FUNC3(cpu_transcoder),
				   FUNC4(port));
	}
}