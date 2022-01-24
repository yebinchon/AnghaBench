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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDE_ERROR_CPT ; 
 int /*<<< orphan*/  SERR_INT ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (struct drm_device*) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev,
					    enum pipe pch_transcoder,
					    bool enable, bool old)
{
	struct drm_i915_private *dev_priv = FUNC8(dev);

	if (enable) {
		FUNC2(SERR_INT,
			   FUNC3(pch_transcoder));

		if (!FUNC4(dev))
			return;

		FUNC6(dev_priv, SDE_ERROR_CPT);
	} else {
		FUNC5(dev_priv, SDE_ERROR_CPT);

		if (old && FUNC1(SERR_INT) &
		    FUNC3(pch_transcoder)) {
			FUNC0("uncleared pch fifo underrun on pch transcoder %c\n",
				  FUNC7(pch_transcoder));
		}
	}
}