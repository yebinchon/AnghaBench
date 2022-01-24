#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ipoctal_channel {scalar_t__ nb_bytes; scalar_t__ board_id; int rx_enable; int isr_rx_rdy_mask; int isr_tx_rdy_mask; TYPE_5__* regs; TYPE_2__* block_regs; } ;
struct TYPE_9__ {int /*<<< orphan*/  cr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sr; } ;
struct TYPE_10__ {TYPE_4__ w; TYPE_3__ r; } ;
struct TYPE_6__ {int /*<<< orphan*/  isr; } ;
struct TYPE_7__ {TYPE_1__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CMD_NEGATE_RTSN ; 
 int /*<<< orphan*/  CR_CMD_RESET_BREAK_CHANGE ; 
 int /*<<< orphan*/  CR_DISABLE_TX ; 
 int /*<<< orphan*/  CR_ENABLE_RX ; 
 int IMR_DELTA_BREAK_A ; 
 int IMR_DELTA_BREAK_B ; 
 scalar_t__ IPACK1_DEVICE_ID_SBS_OCTAL_485 ; 
 int SR_RX_READY ; 
 int SR_TX_EMPTY ; 
 int SR_TX_READY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoctal_channel*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoctal_channel*) ; 

__attribute__((used)) static void FUNC4(struct ipoctal_channel *channel)
{
	u8 isr, sr;

	/* The HW is organized in pair of channels.  See which register we need
	 * to read from */
	isr = FUNC0(&channel->block_regs->r.isr);
	sr = FUNC0(&channel->regs->r.sr);

	if (isr & (IMR_DELTA_BREAK_A | IMR_DELTA_BREAK_B))
		FUNC1(CR_CMD_RESET_BREAK_CHANGE, &channel->regs->w.cr);

	if ((sr & SR_TX_EMPTY) && (channel->nb_bytes == 0)) {
		FUNC1(CR_DISABLE_TX, &channel->regs->w.cr);
		/* In case of RS-485, change from TX to RX when finishing TX.
		 * Half-duplex. */
		if (channel->board_id == IPACK1_DEVICE_ID_SBS_OCTAL_485) {
			FUNC1(CR_CMD_NEGATE_RTSN, &channel->regs->w.cr);
			FUNC1(CR_ENABLE_RX, &channel->regs->w.cr);
			channel->rx_enable = 1;
		}
	}

	/* RX data */
	if ((isr & channel->isr_rx_rdy_mask) && (sr & SR_RX_READY))
		FUNC2(channel, sr);

	/* TX of each character */
	if ((isr & channel->isr_tx_rdy_mask) && (sr & SR_TX_READY))
		FUNC3(channel);
}