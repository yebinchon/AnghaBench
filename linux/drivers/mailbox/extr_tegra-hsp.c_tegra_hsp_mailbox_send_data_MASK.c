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
struct TYPE_2__ {struct tegra_hsp* hsp; } ;
struct tegra_hsp_mailbox {scalar_t__ index; TYPE_1__ channel; int /*<<< orphan*/  producer; } ;
struct tegra_hsp {int /*<<< orphan*/  lock; int /*<<< orphan*/  shared_irq; int /*<<< orphan*/  mask; } ;
struct mbox_chan {struct tegra_hsp_mailbox* con_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EPERM ; 
 scalar_t__ HSP_INT_EMPTY_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HSP_SM_SHRD_MBOX ; 
 int /*<<< orphan*/  HSP_SM_SHRD_MBOX_FULL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_hsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mbox_chan *chan, void *data)
{
	struct tegra_hsp_mailbox *mb = chan->con_priv;
	struct tegra_hsp *hsp = mb->channel.hsp;
	unsigned long flags;
	u32 value;

	if (FUNC2(!mb->producer))
		return -EPERM;

	/* copy data and mark mailbox full */
	value = (u32)(unsigned long)data;
	value |= HSP_SM_SHRD_MBOX_FULL;

	FUNC5(&mb->channel, value, HSP_SM_SHRD_MBOX);

	/* enable EMPTY interrupt for the shared mailbox */
	FUNC3(&hsp->lock, flags);

	hsp->mask |= FUNC0(HSP_INT_EMPTY_SHIFT + mb->index);
	FUNC6(hsp, hsp->mask, FUNC1(hsp->shared_irq));

	FUNC4(&hsp->lock, flags);

	return 0;
}