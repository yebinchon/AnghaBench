#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dw_mipi_dsi_phy_ops {int /*<<< orphan*/  (* power_on ) (int /*<<< orphan*/ ) ;} ;
struct dw_mipi_dsi {TYPE_1__* plat_data; struct dw_mipi_dsi* slave; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv_data; struct dw_mipi_dsi_phy_ops* phy_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_MODE_VIDEO ; 
 struct dw_mipi_dsi* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mipi_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct dw_mipi_dsi *dsi = FUNC0(bridge);
	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;

	/* Switch to video mode for panel-bridge enable & panel enable */
	FUNC1(dsi, MIPI_DSI_MODE_VIDEO);
	if (dsi->slave)
		FUNC1(dsi->slave, MIPI_DSI_MODE_VIDEO);

	if (phy_ops->power_on)
		phy_ops->power_on(dsi->plat_data->priv_data);
}