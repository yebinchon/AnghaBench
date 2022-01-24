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
typedef  int /*<<< orphan*/  u64 ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *data, u64 val)
{
	struct drm_i915_private *dev_priv = data;
	intel_wakeref_t wakeref;
	int ret;

	if (!FUNC0(dev_priv))
		return -ENODEV;

	FUNC1("Setting PSR debug to %llx\n", val);

	wakeref = FUNC3(&dev_priv->runtime_pm);

	ret = FUNC2(dev_priv, val);

	FUNC4(&dev_priv->runtime_pm, wakeref);

	return ret;
}