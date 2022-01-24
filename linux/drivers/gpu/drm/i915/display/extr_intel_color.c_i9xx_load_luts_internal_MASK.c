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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_lut {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const struct intel_crtc_state *crtc_state,
				    const struct drm_property_blob *blob)
{
	struct intel_crtc *crtc = FUNC9(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	int i;

	if (FUNC0(dev_priv)) {
		if (FUNC7(crtc_state, INTEL_OUTPUT_DSI))
			FUNC4(dev_priv);
		else
			FUNC5(dev_priv, pipe);
	}

	if (blob) {
		const struct drm_color_lut *lut = blob->data;

		for (i = 0; i < 256; i++) {
			u32 word =
				(FUNC6(lut[i].red, 8) << 16) |
				(FUNC6(lut[i].green, 8) << 8) |
				FUNC6(lut[i].blue, 8);

			if (FUNC0(dev_priv))
				FUNC1(FUNC3(pipe, i), word);
			else
				FUNC1(FUNC2(pipe, i), word);
		}
	}
}