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
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_bridge {int /*<<< orphan*/ * funcs; struct analogix_dp_device* driver_private; } ;
struct analogix_dp_device {int /*<<< orphan*/  encoder; struct drm_bridge* bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  analogix_dp_bridge_funcs ; 
 struct drm_bridge* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct drm_bridge*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_device *drm_dev,
				     struct analogix_dp_device *dp)
{
	struct drm_bridge *bridge;
	int ret;

	bridge = FUNC1(drm_dev->dev, sizeof(*bridge), GFP_KERNEL);
	if (!bridge) {
		FUNC0("failed to allocate for drm bridge\n");
		return -ENOMEM;
	}

	dp->bridge = bridge;

	bridge->driver_private = dp;
	bridge->funcs = &analogix_dp_bridge_funcs;

	ret = FUNC2(dp->encoder, bridge, NULL);
	if (ret) {
		FUNC0("failed to attach drm bridge\n");
		return -EINVAL;
	}

	return 0;
}