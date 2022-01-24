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
typedef  int /*<<< orphan*/  u32 ;
struct dw_mipi_dsi_phy_ops {int (* get_lane_mbps ) (void*,struct drm_display_mode const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int (* init ) (void*) ;} ;
struct dw_mipi_dsi {int /*<<< orphan*/  dev; int /*<<< orphan*/  lane_mbps; int /*<<< orphan*/  format; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  pclk; TYPE_1__* plat_data; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {void* priv_data; struct dw_mipi_dsi_phy_ops* phy_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC8 (struct dw_mipi_dsi*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC9 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC11 (struct dw_mipi_dsi*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC12 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC13 (struct dw_mipi_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dw_mipi_dsi*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC15 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC16 (struct dw_mipi_dsi*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (void*,struct drm_display_mode const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (void*) ; 

__attribute__((used)) static void FUNC21(struct dw_mipi_dsi *dsi,
				 const struct drm_display_mode *adjusted_mode)
{
	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
	void *priv_data = dsi->plat_data->priv_data;
	int ret;
	u32 lanes = FUNC9(dsi);

	FUNC1(dsi->pclk);

	ret = phy_ops->get_lane_mbps(priv_data, adjusted_mode, dsi->mode_flags,
				     lanes, dsi->format, &dsi->lane_mbps);
	if (ret)
		FUNC0("Phy get_lane_mbps() failed\n");

	FUNC18(dsi->dev);
	FUNC10(dsi);
	FUNC8(dsi, adjusted_mode);
	FUNC12(dsi);
	FUNC15(dsi);
	FUNC16(dsi, adjusted_mode);
	FUNC3(dsi);
	FUNC11(dsi, adjusted_mode);
	FUNC14(dsi, adjusted_mode);

	FUNC5(dsi);
	FUNC7(dsi);
	FUNC6(dsi);

	FUNC2(dsi);

	ret = phy_ops->init(priv_data);
	if (ret)
		FUNC0("Phy init() failed\n");

	FUNC4(dsi);

	FUNC17(adjusted_mode);

	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
	FUNC13(dsi, 0);
}