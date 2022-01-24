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
typedef  int /*<<< orphan*/  u32 ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_bridge* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  devm_drm_panel_bridge_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct drm_bridge**) ; 
 struct drm_bridge** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_bridge**) ; 
 struct drm_bridge* FUNC5 (struct drm_panel*,int /*<<< orphan*/ ) ; 

struct drm_bridge *FUNC6(struct device *dev,
					     struct drm_panel *panel,
					     u32 connector_type)
{
	struct drm_bridge **ptr, *bridge;

	ptr = FUNC3(devm_drm_panel_bridge_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	bridge = FUNC5(panel, connector_type);
	if (!FUNC1(bridge)) {
		*ptr = bridge;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return bridge;
}