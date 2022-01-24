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
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_RPSTAT1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PUNIT_REG_GPU_FREQ_STS ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *kdev,
				    struct device_attribute *attr, char *buf)
{
	struct drm_i915_private *dev_priv = FUNC7(kdev);
	intel_wakeref_t wakeref;
	u32 freq;

	wakeref = FUNC5(&dev_priv->runtime_pm);

	if (FUNC2(dev_priv) || FUNC1(dev_priv)) {
		FUNC9(dev_priv);
		freq = FUNC11(dev_priv, PUNIT_REG_GPU_FREQ_STS);
		FUNC10(dev_priv);

		freq = (freq >> 8) & 0xff;
	} else {
		freq = FUNC3(dev_priv, FUNC0(GEN6_RPSTAT1));
	}

	FUNC6(&dev_priv->runtime_pm, wakeref);

	return FUNC8(buf, PAGE_SIZE, "%d\n", FUNC4(dev_priv, freq));
}