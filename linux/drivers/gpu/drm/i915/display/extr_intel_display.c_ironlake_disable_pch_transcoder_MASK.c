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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int /*<<< orphan*/  TRANS_ENABLE ; 
 int /*<<< orphan*/  TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv,
					    enum pipe pipe)
{
	i915_reg_t reg;
	u32 val;

	/* FDI relies on the transcoder */
	FUNC7(dev_priv, pipe);
	FUNC6(dev_priv, pipe);

	/* Ports must be off as well */
	FUNC8(dev_priv, pipe);

	reg = FUNC4(pipe);
	val = FUNC2(reg);
	val &= ~TRANS_ENABLE;
	FUNC3(reg, val);
	/* wait for PCH transcoder off, transcoder state */
	if (FUNC9(dev_priv, reg, TRANS_STATE_ENABLE, 50))
		FUNC0("failed to disable transcoder %c\n", FUNC10(pipe));

	if (FUNC1(dev_priv)) {
		/* Workaround: Clear the timing override chicken bit again. */
		reg = FUNC5(pipe);
		val = FUNC2(reg);
		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
		FUNC3(reg, val);
	}
}