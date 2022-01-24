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
 int /*<<< orphan*/  DPLL_CTRL2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SKL_DPLL0 ; 
 int SKL_DPLL3 ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
				enum port port,
				struct intel_crtc_state *pipe_config)
{
	enum intel_dpll_id id;
	u32 temp;

	temp = FUNC1(DPLL_CTRL2) & FUNC0(port);
	id = temp >> (port * 3 + 1);

	if (FUNC2(id < SKL_DPLL0 || id > SKL_DPLL3))
		return;

	pipe_config->shared_dpll = FUNC3(dev_priv, id);
}