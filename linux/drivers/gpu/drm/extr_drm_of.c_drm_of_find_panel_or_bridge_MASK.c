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
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct drm_bridge* FUNC2 (struct device_node*) ; 
 struct drm_panel* FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

int FUNC6(const struct device_node *np,
				int port, int endpoint,
				struct drm_panel **panel,
				struct drm_bridge **bridge)
{
	int ret = -EPROBE_DEFER;
	struct device_node *remote;

	if (!panel && !bridge)
		return -EINVAL;
	if (panel)
		*panel = NULL;

	remote = FUNC4(np, port, endpoint);
	if (!remote)
		return -ENODEV;

	if (!FUNC1(remote)) {
		FUNC5(remote);
		return -ENODEV;
	}

	if (panel) {
		*panel = FUNC3(remote);
		if (!FUNC0(*panel))
			ret = 0;
		else
			*panel = NULL;
	}

	/* No panel found yet, check for a bridge next. */
	if (bridge) {
		if (ret) {
			*bridge = FUNC2(remote);
			if (*bridge)
				ret = 0;
		} else {
			*bridge = NULL;
		}

	}

	FUNC5(remote);
	return ret;
}