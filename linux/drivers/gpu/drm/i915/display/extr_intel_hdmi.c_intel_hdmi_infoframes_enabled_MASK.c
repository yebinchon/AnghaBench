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
struct intel_digital_port {int (* infoframes_enabled ) (struct intel_encoder*,struct intel_crtc_state const*) ;} ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 struct intel_digital_port* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 unsigned int* infoframe_type_to_idx ; 
 int FUNC6 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

u32 FUNC8(struct intel_encoder *encoder,
				  const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct intel_digital_port *dig_port = FUNC3(&encoder->base);
	u32 val, ret = 0;
	int i;

	val = dig_port->infoframes_enabled(encoder, crtc_state);

	/* map from hardware bits to dip idx */
	for (i = 0; i < FUNC0(infoframe_type_to_idx); i++) {
		unsigned int type = infoframe_type_to_idx[i];

		if (FUNC2(dev_priv)) {
			if (val & FUNC5(type))
				ret |= FUNC1(i);
		} else {
			if (val & FUNC4(type))
				ret |= FUNC1(i);
		}
	}

	return ret;
}