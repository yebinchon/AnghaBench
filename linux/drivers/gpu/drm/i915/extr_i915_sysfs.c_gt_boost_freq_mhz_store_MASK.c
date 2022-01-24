#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct intel_rps {scalar_t__ min_freq; scalar_t__ max_freq; scalar_t__ boost_freq; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_waiters; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,scalar_t__) ; 
 struct drm_i915_private* FUNC2 (struct device*) ; 
 size_t FUNC3 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *kdev,
				       struct device_attribute *attr,
				       const char *buf, size_t count)
{
	struct drm_i915_private *dev_priv = FUNC2(kdev);
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	bool boost = false;
	ssize_t ret;
	u32 val;

	ret = FUNC3(buf, 0, &val);
	if (ret)
		return ret;

	/* Validate against (static) hardware limits */
	val = FUNC1(dev_priv, val);
	if (val < rps->min_freq || val > rps->max_freq)
		return -EINVAL;

	FUNC4(&rps->lock);
	if (val != rps->boost_freq) {
		rps->boost_freq = val;
		boost = FUNC0(&rps->num_waiters);
	}
	FUNC5(&rps->lock);
	if (boost)
		FUNC6(&rps->work);

	return count;
}