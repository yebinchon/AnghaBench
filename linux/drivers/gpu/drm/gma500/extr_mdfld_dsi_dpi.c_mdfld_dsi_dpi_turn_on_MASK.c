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
struct mdfld_dsi_dpi_output {int panel_on; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DSI_DPI_CTRL_HS_TURN_ON ; 
 int DSI_INTR_STATE_SPL_PKG_SENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 

void FUNC5(struct mdfld_dsi_dpi_output *output, int pipe)
{
	struct drm_device *dev = output->dev;

	/* clear special packet sent bit */
	if (FUNC2(FUNC1(pipe)) & DSI_INTR_STATE_SPL_PKG_SENT)
		FUNC3(FUNC1(pipe),
					DSI_INTR_STATE_SPL_PKG_SENT);

	/*send turn on package*/
	FUNC3(FUNC0(pipe), DSI_DPI_CTRL_HS_TURN_ON);

	/*wait for SPL_PKG_SENT interrupt*/
	FUNC4(dev, pipe);

	if (FUNC2(FUNC1(pipe)) & DSI_INTR_STATE_SPL_PKG_SENT)
		FUNC3(FUNC1(pipe),
					DSI_INTR_STATE_SPL_PKG_SENT);

	output->panel_on = 1;

	/* FIXME the following is disabled to WA the X slow start issue
	   for TMD panel
	if (pipe == 2)
		dev_priv->dpi_panel_on2 = true;
	else if (pipe == 0)
		dev_priv->dpi_panel_on = true; */
}