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
struct isert_cmd {scalar_t__ pdu_buf_dma; int /*<<< orphan*/  pdu_buf_len; } ;
struct iser_tx_desc {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_cmd*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_tx_desc*,struct ib_device*) ; 

__attribute__((used)) static void
FUNC4(struct iser_tx_desc *tx_desc, struct isert_cmd *isert_cmd,
		     struct ib_device *ib_dev, bool comp_err)
{
	if (isert_cmd->pdu_buf_dma != 0) {
		FUNC1("unmap single for isert_cmd->pdu_buf_dma\n");
		FUNC0(ib_dev, isert_cmd->pdu_buf_dma,
				    isert_cmd->pdu_buf_len, DMA_TO_DEVICE);
		isert_cmd->pdu_buf_dma = 0;
	}

	FUNC3(tx_desc, ib_dev);
	FUNC2(isert_cmd, comp_err);
}