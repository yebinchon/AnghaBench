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
typedef  scalar_t__ intel_wakeref_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PIPECONF_ENABLE ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int,scalar_t__) ; 
 int FUNC7 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(struct drm_i915_private *dev_priv,
		 enum pipe pipe, bool state)
{
	bool cur_state;
	enum transcoder cpu_transcoder = FUNC7(dev_priv,
								      pipe);
	enum intel_display_power_domain power_domain;
	intel_wakeref_t wakeref;

	/* we keep both pipes enabled on 830 */
	if (FUNC2(dev_priv))
		state = true;

	power_domain = FUNC4(cpu_transcoder);
	wakeref = FUNC5(dev_priv, power_domain);
	if (wakeref) {
		u32 val = FUNC0(FUNC3(cpu_transcoder));
		cur_state = !!(val & PIPECONF_ENABLE);

		FUNC6(dev_priv, power_domain, wakeref);
	} else {
		cur_state = false;
	}

	FUNC1(cur_state != state,
	     "pipe %c assertion failure (expected %s, current %s)\n",
			FUNC9(pipe), FUNC8(state), FUNC8(cur_state));
}