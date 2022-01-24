#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dw_mipi_dsi_rockchip {int /*<<< orphan*/  grf_clk; struct dw_mipi_dsi_rockchip* slave; TYPE_1__* dev; int /*<<< orphan*/  encoder; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_mipi_dsi_rockchip*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct dw_mipi_dsi_rockchip* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct dw_mipi_dsi_rockchip *dsi = FUNC6(encoder);
	int ret, mux;

	mux = FUNC3(dsi->dev->of_node,
						&dsi->encoder);
	if (mux < 0)
		return;

	FUNC5(dsi->dev);
	if (dsi->slave)
		FUNC5(dsi->slave->dev);

	/*
	 * For the RK3399, the clk of grf must be enabled before writing grf
	 * register. And for RK3288 or other soc, this grf_clk must be NULL,
	 * the clk_prepare_enable return true directly.
	 */
	ret = FUNC2(dsi->grf_clk);
	if (ret) {
		FUNC0(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
		return;
	}

	FUNC4(dsi, mux);
	if (dsi->slave)
		FUNC4(dsi->slave, mux);

	FUNC1(dsi->grf_clk);
}