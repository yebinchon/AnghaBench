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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {struct drm_property_blob* degamma_lut; struct drm_property_blob* gamma_lut; TYPE_1__* crtc; } ;
struct intel_crtc_state {scalar_t__ c8_planes; TYPE_2__ base; } ;
struct drm_property_blob {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_7__ {int degamma_lut_size; int gamma_lut_size; int /*<<< orphan*/  gamma_lut_tests; int /*<<< orphan*/  degamma_lut_tests; } ;
struct TYPE_8__ {TYPE_3__ color; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 TYPE_4__* FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_property_blob const*,int) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC4 (struct drm_property_blob const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc_state->base.crtc->dev);
	const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;
	const struct drm_property_blob *degamma_lut = crtc_state->base.degamma_lut;
	int gamma_length, degamma_length;
	u32 gamma_tests, degamma_tests;

	/* Always allow legacy gamma LUT with no further checking. */
	if (FUNC3(crtc_state))
		return 0;

	/* C8 relies on its palette being stored in the legacy LUT */
	if (crtc_state->c8_planes) {
		FUNC0("C8 pixelformat requires the legacy LUT\n");
		return -EINVAL;
	}

	degamma_length = FUNC1(dev_priv)->color.degamma_lut_size;
	gamma_length = FUNC1(dev_priv)->color.gamma_lut_size;
	degamma_tests = FUNC1(dev_priv)->color.degamma_lut_tests;
	gamma_tests = FUNC1(dev_priv)->color.gamma_lut_tests;

	if (FUNC2(degamma_lut, degamma_length) ||
	    FUNC2(gamma_lut, gamma_length))
		return -EINVAL;

	if (FUNC4(degamma_lut, degamma_tests) ||
	    FUNC4(gamma_lut, gamma_tests))
		return -EINVAL;

	return 0;
}