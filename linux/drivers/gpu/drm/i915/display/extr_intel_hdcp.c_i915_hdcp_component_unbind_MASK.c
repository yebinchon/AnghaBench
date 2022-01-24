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
struct drm_i915_private {int /*<<< orphan*/  hdcp_comp_mutex; int /*<<< orphan*/ * hdcp_master; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_i915_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *i915_kdev,
				       struct device *mei_kdev, void *data)
{
	struct drm_i915_private *dev_priv = FUNC1(i915_kdev);

	FUNC0("I915 HDCP comp unbind\n");
	FUNC2(&dev_priv->hdcp_comp_mutex);
	dev_priv->hdcp_master = NULL;
	FUNC3(&dev_priv->hdcp_comp_mutex);
}