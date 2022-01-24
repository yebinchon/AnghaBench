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
typedef  int u32 ;
struct slimpro_mbox_chan {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; scalar_t__ reg; } ;
struct mbox_chan {struct slimpro_mbox_chan* con_priv; } ;

/* Variables and functions */
 int MBOX_STATUS_ACK_MASK ; 
 int MBOX_STATUS_AVAIL_MASK ; 
 scalar_t__ REG_DB_STATMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct slimpro_mbox_chan*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mbox_chan *chan)
{
	struct slimpro_mbox_chan *mb_chan = chan->con_priv;
	u32 val;

	/* Mask doorbell status interrupt */
	val = FUNC1(mb_chan->reg + REG_DB_STATMASK);
	val |= (MBOX_STATUS_ACK_MASK | MBOX_STATUS_AVAIL_MASK);
	FUNC2(val, mb_chan->reg + REG_DB_STATMASK);

	FUNC0(mb_chan->dev, mb_chan->irq, mb_chan);
}