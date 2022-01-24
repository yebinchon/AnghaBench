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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct intel_encoder*) ; 
 int FUNC8 (struct intel_encoder*) ; 
 int FUNC9 (struct intel_encoder*) ; 
 int FUNC10 (struct intel_encoder*) ; 
 int FUNC11 (struct intel_encoder*) ; 
 int FUNC12 (struct intel_encoder*) ; 
 int FUNC13 (struct intel_encoder*) ; 
 int FUNC14 (struct intel_encoder*) ; 
 int FUNC15 (struct intel_encoder*) ; 
 struct drm_i915_private* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC17(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC16(encoder->base.dev);

	if (FUNC0(dev_priv)) {
		if (FUNC5(dev_priv))
			return FUNC10(encoder);
		else
			return FUNC9(encoder);
	}

	if (FUNC1(dev_priv) >= 11)
		return FUNC11(encoder);
	else if (FUNC2(dev_priv, 10) || FUNC3(dev_priv))
		return FUNC15(encoder);
	else if (FUNC4(dev_priv))
		return FUNC8(encoder);
	else if (FUNC2(dev_priv, 8))
		return FUNC7(encoder);
	else if (FUNC2(dev_priv, 7))
		return FUNC13(encoder);
	else if (FUNC2(dev_priv, 6))
		return FUNC14(encoder);
	else if (FUNC2(dev_priv, 5))
		return FUNC12(encoder);

	FUNC6(FUNC1(dev_priv));
	return false;
}