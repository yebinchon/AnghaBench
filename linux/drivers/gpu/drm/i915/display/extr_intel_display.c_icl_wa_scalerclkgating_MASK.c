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
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DPFR_GATING_DIS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *dev_priv, enum pipe pipe,
		       bool enable)
{
	if (enable)
		FUNC2(FUNC0(pipe),
			   FUNC1(FUNC0(pipe)) | DPFR_GATING_DIS);
	else
		FUNC2(FUNC0(pipe),
			   FUNC1(FUNC0(pipe)) & ~DPFR_GATING_DIS);
}