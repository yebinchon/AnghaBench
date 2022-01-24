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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_encoder*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct intel_encoder *encoder,
			      const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC9(encoder->base.dev);

	/* step 4a: power up all lanes of the DDI used by DSI */
	FUNC5(encoder);

	/* step 4b: configure lane sequencing of the Combo-PHY transmitters */
	FUNC1(encoder);

	/* step 4c: configure voltage swing and skew */
	FUNC8(encoder);

	/* enable DDI buffer */
	FUNC3(encoder);

	/* setup D-PHY timings */
	FUNC6(encoder);

	/* step 4h: setup DSI protocol timeouts */
	FUNC7(encoder);

	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
	FUNC2(encoder, pipe_config);

	/* Step 4l: Gate DDI clocks */
	if (FUNC0(dev_priv, 11))
		FUNC4(encoder);
}