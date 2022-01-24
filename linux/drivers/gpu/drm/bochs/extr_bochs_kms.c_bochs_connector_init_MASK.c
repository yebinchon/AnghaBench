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
struct drm_device {struct bochs_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct bochs_device {scalar_t__ edid; struct drm_connector connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  bochs_connector_connector_funcs ; 
 int /*<<< orphan*/  bochs_connector_connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC1 (struct bochs_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev)
{
	struct bochs_device *bochs = dev->dev_private;
	struct drm_connector *connector = &bochs->connector;

	FUNC4(dev, connector, &bochs_connector_connector_funcs,
			   DRM_MODE_CONNECTOR_VIRTUAL);
	FUNC3(connector,
				 &bochs_connector_connector_helper_funcs);
	FUNC5(connector);

	FUNC1(bochs);
	if (bochs->edid) {
		FUNC0("Found EDID data blob.\n");
		FUNC2(connector);
		FUNC6(connector, bochs->edid);
	}
}