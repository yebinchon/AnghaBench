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
typedef  int u8 ;
struct TYPE_2__ {int child_dev_num; struct child_device_config* child_dev; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct child_device_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct child_device_config const*,int) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv, u8 bdb_version)
{
	const struct child_device_config *child;
	int i;

	if (!FUNC0(dev_priv) && !FUNC1(dev_priv))
		return;

	if (bdb_version < 155)
		return;

	for (i = 0; i < dev_priv->vbt.child_dev_num; i++) {
		child = dev_priv->vbt.child_dev + i;

		FUNC2(dev_priv, child, bdb_version);
	}
}