#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct dsi_data {TYPE_2__* vc; TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  source; } ;
struct TYPE_3__ {int quirks; } ;

/* Variables and functions */
 int DSI_QUIRK_VC_OCP_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DSI_VC_SOURCE_L4 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dsi_data *dsi, int channel)
{
	u32 r;

	FUNC1("Initial config of virtual channel %d", channel);

	r = FUNC5(dsi, FUNC0(channel));

	if (FUNC3(r, 15, 15)) /* VC_BUSY */
		FUNC2("VC(%d) busy when trying to configure it!\n",
				channel);

	r = FUNC4(r, 0, 1, 1); /* SOURCE, 0 = L4 */
	r = FUNC4(r, 0, 2, 2); /* BTA_SHORT_EN  */
	r = FUNC4(r, 0, 3, 3); /* BTA_LONG_EN */
	r = FUNC4(r, 0, 4, 4); /* MODE, 0 = command */
	r = FUNC4(r, 1, 7, 7); /* CS_TX_EN */
	r = FUNC4(r, 1, 8, 8); /* ECC_TX_EN */
	r = FUNC4(r, 0, 9, 9); /* MODE_SPEED, high speed on/off */
	if (dsi->data->quirks & DSI_QUIRK_VC_OCP_WIDTH)
		r = FUNC4(r, 3, 11, 10);	/* OCP_WIDTH = 32 bit */

	r = FUNC4(r, 4, 29, 27); /* DMA_RX_REQ_NB = no dma */
	r = FUNC4(r, 4, 23, 21); /* DMA_TX_REQ_NB = no dma */

	FUNC6(dsi, FUNC0(channel), r);

	dsi->vc[channel].source = DSI_VC_SOURCE_L4;
}