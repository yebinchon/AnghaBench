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
struct dsi_data {int ulps_enabled; int num_lanes_supported; TYPE_1__* lanes; } ;
struct TYPE_2__ {scalar_t__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSI_CIO_IRQ_ULPSACTIVENOT_ALL0 ; 
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_CFG2 ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_POWER_ULPS ; 
 scalar_t__ DSI_LANE_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 scalar_t__ FUNC4 (struct dsi_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_completion_handler ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct dsi_data *dsi)
{
	FUNC0(completion);
	int r, i;
	unsigned int mask;

	FUNC1("Entering ULPS");

	FUNC5(!FUNC6(dsi));

	FUNC5(dsi->ulps_enabled);

	if (dsi->ulps_enabled)
		return 0;

	/* DDR_CLK_ALWAYS_ON */
	if (FUNC4(dsi, DSI_CLK_CTRL, 13, 13)) {
		FUNC9(dsi, 0);
		FUNC3(dsi, DSI_CLK_CTRL, 0, 13, 13);
		FUNC9(dsi, 1);
	}

	FUNC12(dsi, 0);
	FUNC12(dsi, 1);
	FUNC12(dsi, 2);
	FUNC12(dsi, 3);

	FUNC8(dsi);

	FUNC14(dsi, 0, false);
	FUNC14(dsi, 1, false);
	FUNC14(dsi, 2, false);
	FUNC14(dsi, 3, false);

	if (FUNC4(dsi, DSI_COMPLEXIO_CFG2, 16, 16)) {	/* HS_BUSY */
		FUNC2("HS busy when enabling ULPS\n");
		return -EIO;
	}

	if (FUNC4(dsi, DSI_COMPLEXIO_CFG2, 17, 17)) {	/* LP_BUSY */
		FUNC2("LP busy when enabling ULPS\n");
		return -EIO;
	}

	r = FUNC11(dsi, dsi_completion_handler, &completion,
			DSI_CIO_IRQ_ULPSACTIVENOT_ALL0);
	if (r)
		return r;

	mask = 0;

	for (i = 0; i < dsi->num_lanes_supported; ++i) {
		if (dsi->lanes[i].function == DSI_LANE_UNUSED)
			continue;
		mask |= 1 << i;
	}
	/* Assert TxRequestEsc for data lanes and TxUlpsClk for clk lane */
	/* LANEx_ULPS_SIG2 */
	FUNC3(dsi, DSI_COMPLEXIO_CFG2, mask, 9, 5);

	/* flush posted write and wait for SCP interface to finish the write */
	FUNC10(dsi, DSI_COMPLEXIO_CFG2);

	if (FUNC16(&completion,
				FUNC15(1000)) == 0) {
		FUNC2("ULPS enable timeout\n");
		r = -EIO;
		goto err;
	}

	FUNC13(dsi, dsi_completion_handler, &completion,
			DSI_CIO_IRQ_ULPSACTIVENOT_ALL0);

	/* Reset LANEx_ULPS_SIG2 */
	FUNC3(dsi, DSI_COMPLEXIO_CFG2, 0, 9, 5);

	/* flush posted write and wait for SCP interface to finish the write */
	FUNC10(dsi, DSI_COMPLEXIO_CFG2);

	FUNC7(dsi, DSI_COMPLEXIO_POWER_ULPS);

	FUNC9(dsi, false);

	dsi->ulps_enabled = true;

	return 0;

err:
	FUNC13(dsi, dsi_completion_handler, &completion,
			DSI_CIO_IRQ_ULPSACTIVENOT_ALL0);
	return r;
}