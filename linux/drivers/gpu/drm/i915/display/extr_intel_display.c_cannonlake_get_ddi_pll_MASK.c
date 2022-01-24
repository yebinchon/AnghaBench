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
typedef  int u32 ;
struct intel_crtc_state {int /*<<< orphan*/  shared_dpll; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;

/* Variables and functions */
 int /*<<< orphan*/  DPCLKA_CFGCR0 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SKL_DPLL0 ; 
 int SKL_DPLL2 ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				   enum port port,
				   struct intel_crtc_state *pipe_config)
{
	enum intel_dpll_id id;
	u32 temp;

	temp = FUNC2(DPCLKA_CFGCR0) & FUNC0(port);
	id = temp >> FUNC1(port);

	if (FUNC3(id < SKL_DPLL0 || id > SKL_DPLL2))
		return;

	pipe_config->shared_dpll = FUNC4(dev_priv, id);
}