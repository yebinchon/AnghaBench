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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPT_TRANSCONF ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int /*<<< orphan*/  TRANS_ENABLE ; 
 int /*<<< orphan*/  TRANS_STATE_ENABLE ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 val;

	val = FUNC1(LPT_TRANSCONF);
	val &= ~TRANS_ENABLE;
	FUNC2(LPT_TRANSCONF, val);
	/* wait for PCH transcoder off, transcoder state */
	if (FUNC4(dev_priv, LPT_TRANSCONF,
				    TRANS_STATE_ENABLE, 50))
		FUNC0("Failed to disable PCH transcoder\n");

	/* Workaround: clear timing override bit. */
	val = FUNC1(FUNC3(PIPE_A));
	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
	FUNC2(FUNC3(PIPE_A), val);
}