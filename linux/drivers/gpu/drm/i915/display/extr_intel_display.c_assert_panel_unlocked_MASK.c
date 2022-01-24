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
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  DP_A ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int INVALID_PIPE ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  LVDS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
#define  PANEL_PORT_SELECT_DPA 131 
#define  PANEL_PORT_SELECT_DPC 130 
#define  PANEL_PORT_SELECT_DPD 129 
#define  PANEL_PORT_SELECT_LVDS 128 
 int PANEL_PORT_SELECT_MASK ; 
 int PANEL_POWER_ON ; 
 int PANEL_UNLOCK_MASK ; 
 int PANEL_UNLOCK_REGS ; 
 int /*<<< orphan*/  PCH_DP_C ; 
 int /*<<< orphan*/  PCH_DP_D ; 
 int /*<<< orphan*/  PCH_LVDS ; 
 int /*<<< orphan*/  PORT_A ; 
 int /*<<< orphan*/  PORT_C ; 
 int /*<<< orphan*/  PORT_D ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	i915_reg_t pp_reg;
	u32 val;
	enum pipe panel_pipe = INVALID_PIPE;
	bool locked = true;

	if (FUNC9(FUNC0(dev_priv)))
		return;

	if (FUNC1(dev_priv)) {
		u32 port_sel;

		pp_reg = FUNC7(0);
		port_sel = FUNC2(FUNC8(0)) & PANEL_PORT_SELECT_MASK;

		switch (port_sel) {
		case PANEL_PORT_SELECT_LVDS:
			FUNC11(dev_priv, PCH_LVDS, &panel_pipe);
			break;
		case PANEL_PORT_SELECT_DPA:
			FUNC10(dev_priv, DP_A, PORT_A, &panel_pipe);
			break;
		case PANEL_PORT_SELECT_DPC:
			FUNC10(dev_priv, PCH_DP_C, PORT_C, &panel_pipe);
			break;
		case PANEL_PORT_SELECT_DPD:
			FUNC10(dev_priv, PCH_DP_D, PORT_D, &panel_pipe);
			break;
		default:
			FUNC6(port_sel);
			break;
		}
	} else if (FUNC5(dev_priv) || FUNC4(dev_priv)) {
		/* presumably write lock depends on pipe, not port select */
		pp_reg = FUNC7(pipe);
		panel_pipe = pipe;
	} else {
		u32 port_sel;

		pp_reg = FUNC7(0);
		port_sel = FUNC2(FUNC8(0)) & PANEL_PORT_SELECT_MASK;

		FUNC9(port_sel != PANEL_PORT_SELECT_LVDS);
		FUNC11(dev_priv, LVDS, &panel_pipe);
	}

	val = FUNC2(pp_reg);
	if (!(val & PANEL_POWER_ON) ||
	    ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
		locked = false;

	FUNC3(panel_pipe == pipe && locked,
	     "panel assertion failure, pipe %c regs locked\n",
	     FUNC12(pipe));
}