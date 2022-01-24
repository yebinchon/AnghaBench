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
struct srpt_rdma_ch {int state; int /*<<< orphan*/  spinlock; } ;
typedef  enum rdma_ch_state { ____Placeholder_rdma_ch_state } rdma_ch_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct srpt_rdma_ch *ch, enum rdma_ch_state new)
{
	unsigned long flags;
	enum rdma_ch_state prev;
	bool changed = false;

	FUNC0(&ch->spinlock, flags);
	prev = ch->state;
	if (new > prev) {
		ch->state = new;
		changed = true;
	}
	FUNC1(&ch->spinlock, flags);

	return changed;
}