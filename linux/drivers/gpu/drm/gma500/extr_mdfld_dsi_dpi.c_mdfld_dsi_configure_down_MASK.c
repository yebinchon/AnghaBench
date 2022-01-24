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
struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_dpi_output {int dummy; } ;
struct mdfld_dsi_config {struct drm_device* dev; } ;
struct drm_psb_private {int /*<<< orphan*/ * dpi_panel_on; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 struct mdfld_dsi_dpi_output* FUNC0 (struct mdfld_dsi_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mdfld_dsi_dpi_output*,int) ; 
 struct mdfld_dsi_config* FUNC5 (struct mdfld_dsi_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 

__attribute__((used)) static void FUNC8(struct mdfld_dsi_encoder *dsi_encoder,
								int pipe)
{
	struct mdfld_dsi_dpi_output *dpi_output =
				FUNC0(dsi_encoder);
	struct mdfld_dsi_config *dsi_config =
				FUNC5(dsi_encoder);
	struct drm_device *dev = dsi_config->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;

	if (!dev_priv->dpi_panel_on[pipe]) {
		FUNC1(dev->dev, "DPI panel is already off\n");
		return;
	}
	FUNC7(dev);
	FUNC6(dev, 1);
	FUNC3(dev, 0, pipe);
	FUNC4(dpi_output, pipe);
	FUNC2(dev, 0, pipe);
}