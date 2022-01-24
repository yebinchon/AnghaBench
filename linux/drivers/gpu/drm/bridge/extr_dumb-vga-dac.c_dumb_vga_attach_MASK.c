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
struct dumb_vga {int /*<<< orphan*/  connector; int /*<<< orphan*/  ddc; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int ENODEV ; 
 struct dumb_vga* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumb_vga_con_funcs ; 
 int /*<<< orphan*/  dumb_vga_con_helper_funcs ; 

__attribute__((used)) static int FUNC5(struct drm_bridge *bridge)
{
	struct dumb_vga *vga = FUNC1(bridge);
	int ret;

	if (!bridge->encoder) {
		FUNC0("Missing encoder\n");
		return -ENODEV;
	}

	FUNC3(&vga->connector,
				 &dumb_vga_con_helper_funcs);
	ret = FUNC4(bridge->dev, &vga->connector,
					  &dumb_vga_con_funcs,
					  DRM_MODE_CONNECTOR_VGA,
					  vga->ddc);
	if (ret) {
		FUNC0("Failed to initialize connector\n");
		return ret;
	}

	FUNC2(&vga->connector,
					  bridge->encoder);

	return 0;
}