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
struct TYPE_2__ {int child_dev_num; struct child_device_config* child_dev; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct child_device_config {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct child_device_config const*,int) ; 

bool FUNC1(struct drm_i915_private *dev_priv,
				     enum port port)
{
	const struct child_device_config *child;
	int i;

	for (i = 0; i < dev_priv->vbt.child_dev_num; i++) {
		child = dev_priv->vbt.child_dev + i;

		if (FUNC0(child, port))
			return true;
	}

	return false;
}