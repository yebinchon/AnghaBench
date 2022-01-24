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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv,
				      enum pipe pipe)
{
	u32 res1, res2;

	if (FUNC1(dev_priv) >= 3)
		res1 = FUNC0(FUNC6(pipe));
	else
		res1 = 0;

	if (FUNC1(dev_priv) >= 5 || FUNC2(dev_priv))
		res2 = FUNC0(FUNC7(pipe));
	else
		res2 = 0;

	FUNC8(dev_priv, pipe,
				     FUNC0(FUNC5(pipe)),
				     FUNC0(FUNC4(pipe)),
				     FUNC0(FUNC3(pipe)),
				     res1, res2);
}