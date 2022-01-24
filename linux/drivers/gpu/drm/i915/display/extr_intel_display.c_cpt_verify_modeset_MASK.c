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
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct drm_i915_private* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev, int pipe)
{
	struct drm_i915_private *dev_priv = FUNC4(dev);
	i915_reg_t dslreg = FUNC2(pipe);
	u32 temp;

	temp = FUNC1(dslreg);
	FUNC5(500);
	if (FUNC6(FUNC1(dslreg) != temp, 5)) {
		if (FUNC6(FUNC1(dslreg) != temp, 5))
			FUNC0("mode set failed: pipe %c stuck\n", FUNC3(pipe));
	}
}