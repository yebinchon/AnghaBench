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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int hactive; } ;
struct dsi_data {int pix_fmt; scalar_t__ mode; int /*<<< orphan*/  output; TYPE_1__ vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_16 ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_18 ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_24 ; 
 int /*<<< orphan*/  MIPI_DSI_PIXEL_STREAM_3BYTE_18 ; 
#define  OMAP_DSS_DSI_FMT_RGB565 131 
#define  OMAP_DSS_DSI_FMT_RGB666 130 
#define  OMAP_DSS_DSI_FMT_RGB666_PACKED 129 
#define  OMAP_DSS_DSI_FMT_RGB888 128 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC10 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC11(struct omap_dss_device *dssdev, int channel)
{
	struct dsi_data *dsi = FUNC10(dssdev);
	int bpp = FUNC5(dsi->pix_fmt);
	u8 data_type;
	u16 word_count;
	int r;

	r = FUNC3(dsi);
	if (r)
		return r;

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		switch (dsi->pix_fmt) {
		case OMAP_DSS_DSI_FMT_RGB888:
			data_type = MIPI_DSI_PACKED_PIXEL_STREAM_24;
			break;
		case OMAP_DSS_DSI_FMT_RGB666:
			data_type = MIPI_DSI_PIXEL_STREAM_3BYTE_18;
			break;
		case OMAP_DSS_DSI_FMT_RGB666_PACKED:
			data_type = MIPI_DSI_PACKED_PIXEL_STREAM_18;
			break;
		case OMAP_DSS_DSI_FMT_RGB565:
			data_type = MIPI_DSI_PACKED_PIXEL_STREAM_16;
			break;
		default:
			r = -EINVAL;
			goto err_pix_fmt;
		}

		FUNC6(dsi, false);
		FUNC7(dsi, channel, false);

		/* MODE, 1 = video mode */
		FUNC2(dsi, FUNC1(channel), 1, 4, 4);

		word_count = FUNC0(dsi->vm.hactive * bpp, 8);

		FUNC8(dsi, channel, data_type,
				word_count, 0);

		FUNC7(dsi, channel, true);
		FUNC6(dsi, true);
	}

	r = FUNC9(&dsi->output);
	if (r)
		goto err_mgr_enable;

	return 0;

err_mgr_enable:
	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		FUNC6(dsi, false);
		FUNC7(dsi, channel, false);
	}
err_pix_fmt:
	FUNC4(dsi);
	return r;
}