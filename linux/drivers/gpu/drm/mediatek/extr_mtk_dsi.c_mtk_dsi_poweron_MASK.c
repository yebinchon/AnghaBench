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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {int pixelclock; int hactive; int hback_porch; int hfront_porch; int hsync_len; } ;
struct mtk_dsi {int refcount; int format; int lanes; int /*<<< orphan*/  phy; int /*<<< orphan*/  engine_clk; int /*<<< orphan*/  digital_clk; scalar_t__ panel; int /*<<< orphan*/  data_rate; int /*<<< orphan*/  hs_clk; TYPE_1__ vm; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  MIPI_DSI_FMT_RGB565 131 
#define  MIPI_DSI_FMT_RGB666 130 
#define  MIPI_DSI_FMT_RGB666_PACKED 129 
#define  MIPI_DSI_FMT_RGB888 128 
 int T_HS_EXIT ; 
 int T_HS_PREP ; 
 int T_HS_TRAIL ; 
 int T_HS_ZERO ; 
 int T_LPX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC13 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC14 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC15 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC16 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC17 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct mtk_dsi *dsi)
{
	struct device *dev = dsi->dev;
	int ret;
	u64 pixel_clock, total_bits;
	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;

	if (++dsi->refcount != 1)
		return 0;

	switch (dsi->format) {
	case MIPI_DSI_FMT_RGB565:
		bit_per_pixel = 16;
		break;
	case MIPI_DSI_FMT_RGB666_PACKED:
		bit_per_pixel = 18;
		break;
	case MIPI_DSI_FMT_RGB666:
	case MIPI_DSI_FMT_RGB888:
	default:
		bit_per_pixel = 24;
		break;
	}

	/**
	 * htotal_time = htotal * byte_per_pixel / num_lanes
	 * overhead_time = lpx + hs_prepare + hs_zero + hs_trail + hs_exit
	 * mipi_ratio = (htotal_time + overhead_time) / htotal_time
	 * data_rate = pixel_clock * bit_per_pixel * mipi_ratio / num_lanes;
	 */
	pixel_clock = dsi->vm.pixelclock;
	htotal = dsi->vm.hactive + dsi->vm.hback_porch + dsi->vm.hfront_porch +
			dsi->vm.hsync_len;
	htotal_bits = htotal * bit_per_pixel;

	overhead_cycles = T_LPX + T_HS_PREP + T_HS_ZERO + T_HS_TRAIL +
			T_HS_EXIT;
	overhead_bits = overhead_cycles * dsi->lanes * 8;
	total_bits = htotal_bits + overhead_bits;

	dsi->data_rate = FUNC0(pixel_clock * total_bits,
					  htotal * dsi->lanes);

	ret = FUNC4(dsi->hs_clk, dsi->data_rate);
	if (ret < 0) {
		FUNC5(dev, "Failed to set data rate: %d\n", ret);
		goto err_refcount;
	}

	FUNC19(dsi->phy);

	ret = FUNC3(dsi->engine_clk);
	if (ret < 0) {
		FUNC5(dev, "Failed to enable engine clock: %d\n", ret);
		goto err_phy_power_off;
	}

	ret = FUNC3(dsi->digital_clk);
	if (ret < 0) {
		FUNC5(dev, "Failed to enable digital clock: %d\n", ret);
		goto err_disable_engine_clk;
	}

	FUNC10(dsi);
	FUNC14(dsi);
	FUNC12(dsi);

	FUNC15(dsi);
	FUNC13(dsi);
	FUNC17(dsi);
	FUNC9(dsi);
	FUNC16(dsi);

	FUNC8(dsi);
	FUNC11(dsi);
	FUNC7(dsi, 0);

	if (dsi->panel) {
		if (FUNC6(dsi->panel)) {
			FUNC1("failed to prepare the panel\n");
			goto err_disable_digital_clk;
		}
	}

	return 0;
err_disable_digital_clk:
	FUNC2(dsi->digital_clk);
err_disable_engine_clk:
	FUNC2(dsi->engine_clk);
err_phy_power_off:
	FUNC18(dsi->phy);
err_refcount:
	dsi->refcount--;
	return ret;
}