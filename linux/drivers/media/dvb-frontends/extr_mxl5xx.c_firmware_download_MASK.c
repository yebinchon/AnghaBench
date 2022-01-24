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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mxl {TYPE_1__* base; int /*<<< orphan*/  i2cdev; } ;
struct MXL_HYDRA_SKU_COMMAND_T {int /*<<< orphan*/  sku_type; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  sku_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct MXL_HYDRA_SKU_COMMAND_T*,int*) ; 
 int HYDRA_DISABLE_CLK_2 ; 
 int HYDRA_MODULES_CLK_2_REG ; 
 int /*<<< orphan*/  HYDRA_PRCM_ROOT_CLK_REG ; 
 int HYDRA_RESET_BBAND_DATA ; 
 int HYDRA_RESET_BBAND_REG ; 
 int HYDRA_RESET_TRANSPORT_FIFO_DATA ; 
 int HYDRA_RESET_TRANSPORT_FIFO_REG ; 
 int HYDRA_RESET_XBAR_DATA ; 
 int HYDRA_RESET_XBAR_REG ; 
 int /*<<< orphan*/  MXL_CMD_WRITE ; 
 int MXL_HYDRA_CMD_HEADER_SIZE ; 
 scalar_t__ MXL_HYDRA_DEVICE_568 ; 
 int /*<<< orphan*/  MXL_HYDRA_DEV_CFG_SKU_CMD ; 
 int XPT_DMD0_BASEADDR ; 
 scalar_t__ FUNC1 (struct mxl*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct mxl*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mxl*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct mxl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mxl*,int,int*) ; 
 int FUNC8 (struct mxl*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (struct mxl*,int,int) ; 

__attribute__((used)) static int FUNC11(struct mxl *state, u8 *mbin, u32 mbin_len)
{
	int status;
	u32 reg_data = 0;
	struct MXL_HYDRA_SKU_COMMAND_T dev_sku_cfg;
	u8 cmd_size = sizeof(struct MXL_HYDRA_SKU_COMMAND_T);
	u8 cmd_buff[sizeof(struct MXL_HYDRA_SKU_COMMAND_T) + 6];

	if (FUNC1(state, mbin, mbin_len))
		return -1;

	/* put CPU into reset */
	status = FUNC8(state, 0x8003003C, 0, 1, 0);
	if (status)
		return status;
	FUNC9(1000, 2000);

	/* Reset TX FIFO's, BBAND, XBAR */
	status = FUNC10(state, HYDRA_RESET_TRANSPORT_FIFO_REG,
				HYDRA_RESET_TRANSPORT_FIFO_DATA);
	if (status)
		return status;
	status = FUNC10(state, HYDRA_RESET_BBAND_REG,
				HYDRA_RESET_BBAND_DATA);
	if (status)
		return status;
	status = FUNC10(state, HYDRA_RESET_XBAR_REG,
				HYDRA_RESET_XBAR_DATA);
	if (status)
		return status;

	/* Disable clock to Baseband, Wideband, SerDes,
	 * Alias ext & Transport modules
	 */
	status = FUNC10(state, HYDRA_MODULES_CLK_2_REG,
				HYDRA_DISABLE_CLK_2);
	if (status)
		return status;
	/* Clear Software & Host interrupt status - (Clear on read) */
	status = FUNC6(state, HYDRA_PRCM_ROOT_CLK_REG, &reg_data);
	if (status)
		return status;
	status = FUNC3(state, mbin, mbin_len);
	if (status)
		return status;

	if (state->base->type == MXL_HYDRA_DEVICE_568) {
		FUNC9(10000, 11000);

		/* bring XCPU out of reset */
		status = FUNC10(state, 0x90720000, 1);
		if (status)
			return status;
		FUNC5(500);

		/* Enable XCPU UART message processing in MCPU */
		status = FUNC10(state, 0x9076B510, 1);
		if (status)
			return status;
	} else {
		/* Bring CPU out of reset */
		status = FUNC8(state, 0x8003003C, 0, 1, 1);
		if (status)
			return status;
		/* Wait until FW boots */
		FUNC5(150);
	}

	/* Initialize XPT XBAR */
	status = FUNC10(state, XPT_DMD0_BASEADDR, 0x76543210);
	if (status)
		return status;

	if (!FUNC4(state))
		return -1;

	FUNC2(state->i2cdev, "Hydra FW alive. Hail!\n");

	/* sometimes register values are wrong shortly
	 * after first heart beats
	 */
	FUNC5(50);

	dev_sku_cfg.sku_type = state->base->sku_type;
	FUNC0(MXL_HYDRA_DEV_CFG_SKU_CMD, MXL_CMD_WRITE,
			cmd_size, &dev_sku_cfg, cmd_buff);
	status = FUNC7(state, cmd_size + MXL_HYDRA_CMD_HEADER_SIZE,
			      &cmd_buff[0]);

	return status;
}