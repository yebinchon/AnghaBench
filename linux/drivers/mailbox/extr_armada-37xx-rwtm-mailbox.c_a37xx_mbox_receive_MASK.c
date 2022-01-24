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
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct armada_37xx_rwtm_rx_msg {void** status; void* retval; } ;
struct a37xx_mbox {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ RWTM_MBOX_RETURN_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_chan*,struct armada_37xx_rwtm_rx_msg*) ; 
 void* FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mbox_chan *chan)
{
	struct a37xx_mbox *mbox = chan->con_priv;
	struct armada_37xx_rwtm_rx_msg rx_msg;
	int i;

	rx_msg.retval = FUNC2(mbox->base + RWTM_MBOX_RETURN_STATUS);
	for (i = 0; i < 16; ++i)
		rx_msg.status[i] = FUNC2(mbox->base + FUNC0(i));

	FUNC1(chan, &rx_msg);
}