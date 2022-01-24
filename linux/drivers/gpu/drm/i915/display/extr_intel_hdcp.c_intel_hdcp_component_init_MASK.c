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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {int hdcp_comp_added; int /*<<< orphan*/  hdcp_comp_mutex; TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  I915_COMPONENT_HDCP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i915_hdcp_component_ops ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_i915_private *dev_priv)
{
	int ret;

	if (!FUNC3(dev_priv))
		return;

	FUNC4(&dev_priv->hdcp_comp_mutex);
	FUNC1(dev_priv->hdcp_comp_added);

	dev_priv->hdcp_comp_added = true;
	FUNC5(&dev_priv->hdcp_comp_mutex);
	ret = FUNC2(dev_priv->drm.dev, &i915_hdcp_component_ops,
				  I915_COMPONENT_HDCP);
	if (ret < 0) {
		FUNC0("Failed at component add(%d)\n", ret);
		FUNC4(&dev_priv->hdcp_comp_mutex);
		dev_priv->hdcp_comp_added = false;
		FUNC5(&dev_priv->hdcp_comp_mutex);
		return;
	}
}