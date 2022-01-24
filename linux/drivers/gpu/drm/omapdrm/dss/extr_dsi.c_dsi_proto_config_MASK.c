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
struct dsi_data {scalar_t__ mode; TYPE_1__* data; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_2__ {int quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  DSI_FIFO_SIZE_32 ; 
 int DSI_QUIRK_DCS_CMD_CONFIG_VC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dsi_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dsi_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dsi_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dsi_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct dsi_data *dsi)
{
	u32 r;
	int buswidth = 0;

	FUNC5(dsi, DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32);

	FUNC4(dsi, DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32,
			DSI_FIFO_SIZE_32);

	/* XXX what values for the timeouts? */
	FUNC12(dsi, 0x1000, false, false);
	FUNC13(dsi, 0x1fff, true, true);
	FUNC11(dsi, 0x1fff, true, true);
	FUNC10(dsi, 0x1fff, true, true);

	switch (FUNC8(dsi->pix_fmt)) {
	case 16:
		buswidth = 0;
		break;
	case 18:
		buswidth = 1;
		break;
	case 24:
		buswidth = 2;
		break;
	default:
		FUNC0();
		return -EINVAL;
	}

	r = FUNC9(dsi, DSI_CTRL);
	r = FUNC1(r, 1, 1, 1);	/* CS_RX_EN */
	r = FUNC1(r, 1, 2, 2);	/* ECC_RX_EN */
	r = FUNC1(r, 1, 3, 3);	/* TX_FIFO_ARBITRATION */
	r = FUNC1(r, 1, 4, 4);	/* VP_CLK_RATIO, always 1, see errata*/
	r = FUNC1(r, buswidth, 7, 6); /* VP_DATA_BUS_WIDTH */
	r = FUNC1(r, 0, 8, 8);	/* VP_CLK_POL */
	r = FUNC1(r, 1, 14, 14);	/* TRIGGER_RESET_MODE */
	r = FUNC1(r, 1, 19, 19);	/* EOT_ENABLE */
	if (!(dsi->data->quirks & DSI_QUIRK_DCS_CMD_CONFIG_VC)) {
		r = FUNC1(r, 1, 24, 24);	/* DCS_CMD_ENABLE */
		/* DCS_CMD_CODE, 1=start, 0=continue */
		r = FUNC1(r, 0, 25, 25);
	}

	FUNC15(dsi, DSI_CTRL, r);

	FUNC6(dsi);

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		FUNC7(dsi);
		FUNC2(dsi);
		FUNC3(dsi);
	}

	FUNC14(dsi, 0);
	FUNC14(dsi, 1);
	FUNC14(dsi, 2);
	FUNC14(dsi, 3);

	return 0;
}