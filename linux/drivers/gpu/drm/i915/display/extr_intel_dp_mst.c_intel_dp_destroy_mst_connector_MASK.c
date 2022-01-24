#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_i915_private {TYPE_2__* fbdev; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_1__ base; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct drm_connector*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_dp_mst_topology_mgr *mgr,
					   struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC4(connector->dev);

	FUNC0("[CONNECTOR:%d:%s]\n", connector->base.id, connector->name);
	FUNC2(connector);

	if (dev_priv->fbdev)
		FUNC3(&dev_priv->fbdev->helper,
						   connector);

	FUNC1(connector);
}