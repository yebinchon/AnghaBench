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
struct intel_encoder {int port; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_CLK_SEL_NONE ; 
 int /*<<< orphan*/  DPCLKA_CFGCR0 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  DPLL_CTRL2 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int PORT_C ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int PORT_CLK_SEL_NONE ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 
 int FUNC11 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC12(encoder->base.dev);
	enum port port = encoder->port;
	enum phy phy = FUNC11(dev_priv, port);

	if (FUNC5(dev_priv) >= 11) {
		if (!FUNC10(dev_priv, phy) ||
		    (FUNC7(dev_priv) && port >= PORT_C))
			FUNC4(FUNC0(port), DDI_CLK_SEL_NONE);
	} else if (FUNC6(dev_priv)) {
		FUNC4(DPCLKA_CFGCR0, FUNC3(DPCLKA_CFGCR0) |
			   FUNC1(port));
	} else if (FUNC8(dev_priv)) {
		FUNC4(DPLL_CTRL2, FUNC3(DPLL_CTRL2) |
			   FUNC2(port));
	} else if (FUNC5(dev_priv) < 9) {
		FUNC4(FUNC9(port), PORT_CLK_SEL_NONE);
	}
}