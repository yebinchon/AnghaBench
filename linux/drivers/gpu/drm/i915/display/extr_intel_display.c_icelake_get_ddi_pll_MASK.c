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
typedef  scalar_t__ u32 ;
struct intel_crtc_state {TYPE_1__* icl_port_dplls; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
typedef  enum icl_port_dpll_id { ____Placeholder_icl_port_dpll_id } icl_port_dpll_id ;
struct TYPE_2__ {int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DDI_CLK_SEL_MASK ; 
 scalar_t__ DDI_CLK_SEL_MG ; 
 scalar_t__ DDI_CLK_SEL_TBT_162 ; 
 int DPLL_ID_ICL_TBTPLL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICL_DPCLKA_CFGCR0 ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int ICL_PORT_DPLL_DEFAULT ; 
 int ICL_PORT_DPLL_MG_PHY ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*,int) ; 
 int FUNC11 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv,
				enum port port,
				struct intel_crtc_state *pipe_config)
{
	enum phy phy = FUNC11(dev_priv, port);
	enum icl_port_dpll_id port_dpll_id;
	enum intel_dpll_id id;
	u32 temp;

	if (FUNC9(dev_priv, phy)) {
		temp = FUNC1(ICL_DPCLKA_CFGCR0) &
			FUNC2(phy);
		id = temp >> FUNC3(phy);
		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
	} else if (FUNC10(dev_priv, phy)) {
		u32 clk_sel = FUNC1(FUNC0(port)) & DDI_CLK_SEL_MASK;

		if (clk_sel == DDI_CLK_SEL_MG) {
			id = FUNC7(FUNC12(dev_priv,
								    port));
			port_dpll_id = ICL_PORT_DPLL_MG_PHY;
		} else {
			FUNC5(clk_sel < DDI_CLK_SEL_TBT_162);
			id = DPLL_ID_ICL_TBTPLL;
			port_dpll_id = ICL_PORT_DPLL_DEFAULT;
		}
	} else {
		FUNC4(1, "Invalid port %x\n", port);
		return;
	}

	pipe_config->icl_port_dplls[port_dpll_id].pll =
		FUNC8(dev_priv, id);

	FUNC6(pipe_config, port_dpll_id);
}