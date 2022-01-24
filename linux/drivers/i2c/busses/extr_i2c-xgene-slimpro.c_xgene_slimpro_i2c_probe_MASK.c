#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  of_node; TYPE_7__* parent; } ;
struct i2c_adapter {TYPE_16__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct mbox_client {int knows_txdone; int tx_block; int /*<<< orphan*/  rx_callback; int /*<<< orphan*/  tx_tout; TYPE_7__* dev; } ;
struct slimpro_i2c_dev {TYPE_3__* mbox_chan; struct i2c_adapter adapter; void* pcc_comm_addr; int /*<<< orphan*/  comm_base_addr; int /*<<< orphan*/  mbox_idx; int /*<<< orphan*/  rd_complete; struct mbox_client mbox_client; TYPE_7__* dev; } ;
struct TYPE_22__ {int /*<<< orphan*/  of_node; TYPE_1__* driver; } ;
struct platform_device {TYPE_7__ dev; } ;
struct acpi_pcct_hw_reduced {int /*<<< orphan*/  length; int /*<<< orphan*/  base_address; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_21__ {TYPE_2__* mbox; struct acpi_pcct_hw_reduced* con_priv; } ;
struct TYPE_20__ {int /*<<< orphan*/  txdone_irq; } ;
struct TYPE_19__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  MAILBOX_I2C_INDEX ; 
 int /*<<< orphan*/  MAILBOX_OP_TIMEOUT ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int /*<<< orphan*/  MEMREMAP_WT ; 
 int FUNC4 (TYPE_3__*) ; 
 int XGENE_SLIMPRO_I2C_V1 ; 
 int XGENE_SLIMPRO_I2C_V2 ; 
 scalar_t__ acpi_disabled ; 
 struct acpi_device_id* FUNC5 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_7__*,char*,int /*<<< orphan*/ *) ; 
 struct slimpro_i2c_dev* FUNC10 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_adapter*,struct slimpro_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 TYPE_3__* FUNC16 (struct mbox_client*,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 TYPE_3__* FUNC19 (struct mbox_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct slimpro_i2c_dev*) ; 
 int /*<<< orphan*/  slimpro_i2c_pcc_rx_cb ; 
 int /*<<< orphan*/  slimpro_i2c_rx_cb ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  xgene_slimpro_i2c_algorithm ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct slimpro_i2c_dev *ctx;
	struct i2c_adapter *adapter;
	struct mbox_client *cl;
	int rc;

	ctx = FUNC10(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = &pdev->dev;
	FUNC20(pdev, ctx);
	cl = &ctx->mbox_client;

	/* Request mailbox channel */
	cl->dev = &pdev->dev;
	FUNC14(&ctx->rd_complete);
	cl->tx_tout = MAILBOX_OP_TIMEOUT;
	cl->knows_txdone = false;
	if (acpi_disabled) {
		cl->tx_block = true;
		cl->rx_callback = slimpro_i2c_rx_cb;
		ctx->mbox_chan = FUNC16(cl, MAILBOX_I2C_INDEX);
		if (FUNC3(ctx->mbox_chan)) {
			FUNC6(&pdev->dev, "i2c mailbox channel request failed\n");
			return FUNC4(ctx->mbox_chan);
		}
	} else {
		struct acpi_pcct_hw_reduced *cppc_ss;
		const struct acpi_device_id *acpi_id;
		int version = XGENE_SLIMPRO_I2C_V1;

		acpi_id = FUNC5(pdev->dev.driver->acpi_match_table,
					    &pdev->dev);
		if (!acpi_id)
			return -EINVAL;

		version = (int)acpi_id->driver_data;

		if (FUNC9(&pdev->dev, "pcc-channel",
					     &ctx->mbox_idx))
			ctx->mbox_idx = MAILBOX_I2C_INDEX;

		cl->tx_block = false;
		cl->rx_callback = slimpro_i2c_pcc_rx_cb;
		ctx->mbox_chan = FUNC19(cl, ctx->mbox_idx);
		if (FUNC3(ctx->mbox_chan)) {
			FUNC6(&pdev->dev, "PCC mailbox channel request failed\n");
			return FUNC4(ctx->mbox_chan);
		}

		/*
		 * The PCC mailbox controller driver should
		 * have parsed the PCCT (global table of all
		 * PCC channels) and stored pointers to the
		 * subspace communication region in con_priv.
		 */
		cppc_ss = ctx->mbox_chan->con_priv;
		if (!cppc_ss) {
			FUNC6(&pdev->dev, "PPC subspace not found\n");
			rc = -ENOENT;
			goto mbox_err;
		}

		if (!ctx->mbox_chan->mbox->txdone_irq) {
			FUNC6(&pdev->dev, "PCC IRQ not supported\n");
			rc = -ENOENT;
			goto mbox_err;
		}

		/*
		 * This is the shared communication region
		 * for the OS and Platform to communicate over.
		 */
		ctx->comm_base_addr = cppc_ss->base_address;
		if (ctx->comm_base_addr) {
			if (version == XGENE_SLIMPRO_I2C_V2)
				ctx->pcc_comm_addr = FUNC17(
							ctx->comm_base_addr,
							cppc_ss->length,
							MEMREMAP_WT);
			else
				ctx->pcc_comm_addr = FUNC17(
							ctx->comm_base_addr,
							cppc_ss->length,
							MEMREMAP_WB);
		} else {
			FUNC6(&pdev->dev, "Failed to get PCC comm region\n");
			rc = -ENOENT;
			goto mbox_err;
		}

		if (!ctx->pcc_comm_addr) {
			FUNC6(&pdev->dev,
				"Failed to ioremap PCC comm region\n");
			rc = -ENOMEM;
			goto mbox_err;
		}
	}
	rc = FUNC11(&pdev->dev, FUNC2(64));
	if (rc)
		FUNC8(&pdev->dev, "Unable to set dma mask\n");

	/* Setup I2C adapter */
	adapter = &ctx->adapter;
	FUNC21(adapter->name, sizeof(adapter->name), "MAILBOX I2C");
	adapter->algo = &xgene_slimpro_i2c_algorithm;
	adapter->class = I2C_CLASS_HWMON;
	adapter->dev.parent = &pdev->dev;
	adapter->dev.of_node = pdev->dev.of_node;
	FUNC1(&adapter->dev, FUNC0(&pdev->dev));
	FUNC13(adapter, ctx);
	rc = FUNC12(adapter);
	if (rc)
		goto mbox_err;

	FUNC7(&pdev->dev, "Mailbox I2C Adapter registered\n");
	return 0;

mbox_err:
	if (acpi_disabled)
		FUNC15(ctx->mbox_chan);
	else
		FUNC18(ctx->mbox_chan);

	return rc;
}