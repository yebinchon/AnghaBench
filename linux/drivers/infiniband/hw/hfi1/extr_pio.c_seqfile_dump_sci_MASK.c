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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;
struct send_context_info {int /*<<< orphan*/  credits; int /*<<< orphan*/  base; int /*<<< orphan*/  type; struct send_context* sc; } ;
struct send_context {int /*<<< orphan*/ * hw_free; int /*<<< orphan*/  hw_context; int /*<<< orphan*/  dd; int /*<<< orphan*/  credit_ctrl; int /*<<< orphan*/  credit_intr_count; int /*<<< orphan*/  alloc_free; int /*<<< orphan*/  fill_wrap; int /*<<< orphan*/  free; int /*<<< orphan*/  fill; int /*<<< orphan*/  sr_tail; int /*<<< orphan*/  sr_head; int /*<<< orphan*/  credits; int /*<<< orphan*/  sr_size; int /*<<< orphan*/  group; int /*<<< orphan*/  sw_index; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREDIT_STATUS ; 
 int /*<<< orphan*/  CREDIT_STATUS_CURRENT_FREE_COUNTER_MASK ; 
 int /*<<< orphan*/  CREDIT_STATUS_CURRENT_FREE_COUNTER_SHIFT ; 
 int /*<<< orphan*/  CREDIT_STATUS_LAST_RETURNED_COUNTER_SMASK ; 
 int CR_COUNTER_SHIFT ; 
 int CR_COUNTER_SMASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int,...) ; 

void FUNC4(struct seq_file *s, u32 i,
		      struct send_context_info *sci)
{
	struct send_context *sc = sci->sc;
	u64 reg;

	FUNC3(s, "SCI %u: type %u base %u credits %u\n",
		   i, sci->type, sci->base, sci->credits);
	FUNC3(s, "  flags 0x%x sw_inx %u hw_ctxt %u grp %u\n",
		   sc->flags,  sc->sw_index, sc->hw_context, sc->group);
	FUNC3(s, "  sr_size %u credits %u sr_head %u sr_tail %u\n",
		   sc->sr_size, sc->credits, sc->sr_head, sc->sr_tail);
	FUNC3(s, "  fill %lu free %lu fill_wrap %u alloc_free %lu\n",
		   sc->fill, sc->free, sc->fill_wrap, sc->alloc_free);
	FUNC3(s, "  credit_intr_count %u credit_ctrl 0x%llx\n",
		   sc->credit_intr_count, sc->credit_ctrl);
	reg = FUNC2(sc->dd, sc->hw_context, FUNC0(CREDIT_STATUS));
	FUNC3(s, "  *hw_free %llu CurrentFree %llu LastReturned %llu\n",
		   (FUNC1(*sc->hw_free) & CR_COUNTER_SMASK) >>
		    CR_COUNTER_SHIFT,
		   (reg >> FUNC0(CREDIT_STATUS_CURRENT_FREE_COUNTER_SHIFT)) &
		    FUNC0(CREDIT_STATUS_CURRENT_FREE_COUNTER_MASK),
		   reg & FUNC0(CREDIT_STATUS_LAST_RETURNED_COUNTER_SMASK));
}