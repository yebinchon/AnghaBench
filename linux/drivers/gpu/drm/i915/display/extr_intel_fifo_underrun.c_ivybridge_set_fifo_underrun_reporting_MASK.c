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
struct drm_device {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  DE_ERR_INT_IVB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GEN7_ERR_INT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (struct drm_device*) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev,
						  enum pipe pipe,
						  bool enable, bool old)
{
	struct drm_i915_private *dev_priv = FUNC8(dev);
	if (enable) {
		FUNC3(GEN7_ERR_INT, FUNC1(pipe));

		if (!FUNC6(dev))
			return;

		FUNC5(dev_priv, DE_ERR_INT_IVB);
	} else {
		FUNC4(dev_priv, DE_ERR_INT_IVB);

		if (old &&
		    FUNC2(GEN7_ERR_INT) & FUNC1(pipe)) {
			FUNC0("uncleared fifo underrun on pipe %c\n",
				  FUNC7(pipe));
		}
	}
}