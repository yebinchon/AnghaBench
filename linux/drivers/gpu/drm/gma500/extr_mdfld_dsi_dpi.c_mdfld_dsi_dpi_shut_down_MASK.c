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
struct mdfld_dsi_dpi_output {scalar_t__ first_boot; scalar_t__ panel_on; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DSI_DPI_CTRL_HS_SHUTDOWN ; 
 int DSI_INTR_STATE_SPL_PKG_SENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 

__attribute__((used)) static void FUNC5(struct mdfld_dsi_dpi_output *output,
								int pipe)
{
	struct drm_device *dev = output->dev;

	/*if output is on, or mode setting didn't happen, ignore this*/
	if ((!output->panel_on) || output->first_boot) {
		output->first_boot = 0;
		return;
	}

	/* Wait for dpi fifo to empty */
	FUNC4(dev, pipe);

	/* Clear the special packet interrupt bit if set */
	if (FUNC2(FUNC1(pipe)) & DSI_INTR_STATE_SPL_PKG_SENT)
		FUNC3(FUNC1(pipe),
					DSI_INTR_STATE_SPL_PKG_SENT);

	if (FUNC2(FUNC0(pipe)) == DSI_DPI_CTRL_HS_SHUTDOWN)
		goto shutdown_out;

	FUNC3(FUNC0(pipe), DSI_DPI_CTRL_HS_SHUTDOWN);

shutdown_out:
	output->panel_on = 0;
	output->first_boot = 0;

	/* FIXME the following is disabled to WA the X slow start issue
	   for TMD panel
	if (pipe == 2)
		dev_priv->dpi_panel_on2 = false;
	else if (pipe == 0)
		dev_priv->dpi_panel_on = false;	 */
}