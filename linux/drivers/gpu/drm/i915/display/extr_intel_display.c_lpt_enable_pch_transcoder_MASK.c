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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LPT_TRANSCONF ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PIPECONF_INTERLACED_ILK ; 
 int PIPECONF_INTERLACE_MASK_HSW ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int TRANS_ENABLE ; 
 int TRANS_INTERLACED ; 
 int TRANS_PROGRESSIVE ; 
 int /*<<< orphan*/  TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv,
				      enum transcoder cpu_transcoder)
{
	u32 val, pipeconf_val;

	/* FDI must be feeding us bits for PCH ports */
	FUNC6(dev_priv, (enum pipe) cpu_transcoder);
	FUNC5(dev_priv, PIPE_A);

	/* Workaround: set timing override bit. */
	val = FUNC1(FUNC4(PIPE_A));
	val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
	FUNC2(FUNC4(PIPE_A), val);

	val = TRANS_ENABLE;
	pipeconf_val = FUNC1(FUNC3(cpu_transcoder));

	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) ==
	    PIPECONF_INTERLACED_ILK)
		val |= TRANS_INTERLACED;
	else
		val |= TRANS_PROGRESSIVE;

	FUNC2(LPT_TRANSCONF, val);
	if (FUNC7(dev_priv, LPT_TRANSCONF,
				  TRANS_STATE_ENABLE, 100))
		FUNC0("Failed to enable PCH transcoder\n");
}