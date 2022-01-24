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
struct mdfld_dsi_connector {int dummy; } ;
struct mdfld_dsi_config {struct drm_display_mode* fixed_mode; } ;
struct drm_display_mode {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC2 (struct drm_device*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 struct mdfld_dsi_connector* FUNC4 (struct drm_connector*) ; 
 struct mdfld_dsi_config* FUNC5 (struct mdfld_dsi_connector*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct mdfld_dsi_connector *dsi_connector =
				FUNC4(connector);
	struct mdfld_dsi_config *dsi_config =
				FUNC5(dsi_connector);
	struct drm_display_mode *fixed_mode = dsi_config->fixed_mode;
	struct drm_display_mode *dup_mode = NULL;
	struct drm_device *dev = connector->dev;

	if (fixed_mode) {
		FUNC1(dev->dev, "fixed_mode %dx%d\n",
				fixed_mode->hdisplay, fixed_mode->vdisplay);
		dup_mode = FUNC2(dev, fixed_mode);
		FUNC3(connector, dup_mode);
		return 1;
	}
	FUNC0("Didn't get any modes!\n");
	return 0;
}