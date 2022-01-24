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
struct i915_hdcp_comp_master {struct device* mei_dev; } ;
struct drm_i915_private {int /*<<< orphan*/  hdcp_comp_mutex; struct i915_hdcp_comp_master* hdcp_master; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_i915_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *i915_kdev,
				    struct device *mei_kdev, void *data)
{
	struct drm_i915_private *dev_priv = FUNC1(i915_kdev);

	FUNC0("I915 HDCP comp bind\n");
	FUNC2(&dev_priv->hdcp_comp_mutex);
	dev_priv->hdcp_master = (struct i915_hdcp_comp_master *)data;
	dev_priv->hdcp_master->mei_dev = mei_kdev;
	FUNC3(&dev_priv->hdcp_comp_mutex);

	return 0;
}