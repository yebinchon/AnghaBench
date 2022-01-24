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
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FDI_TX_ENABLE ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TRANS_DDI_FUNC_ENABLE ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv,
			  enum pipe pipe, bool state)
{
	bool cur_state;
	enum transcoder cpu_transcoder = FUNC5(dev_priv,
								      pipe);

	if (FUNC1(dev_priv)) {
		/* DDI does not have a specific FDI_TX register */
		u32 val = FUNC2(FUNC4(cpu_transcoder));
		cur_state = !!(val & TRANS_DDI_FUNC_ENABLE);
	} else {
		u32 val = FUNC2(FUNC0(pipe));
		cur_state = !!(val & FDI_TX_ENABLE);
	}
	FUNC3(cur_state != state,
	     "FDI TX state assertion failure (expected %s, current %s)\n",
			FUNC6(state), FUNC6(cur_state));
}