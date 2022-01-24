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
typedef  size_t u32 ;
struct send_context {size_t sw_index; size_t hw_context; int /*<<< orphan*/  buffers_allocated; struct send_context* sr; int /*<<< orphan*/  halt_work; int /*<<< orphan*/  piowait; struct hfi1_devdata* dd; int /*<<< orphan*/  flags; } ;
struct hfi1_devdata {int /*<<< orphan*/  sc_lock; TYPE_1__* send_contexts; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_ENABLE ; 
 int /*<<< orphan*/  CHECK_OPCODE ; 
 int /*<<< orphan*/  CHECK_PARTITION_KEY ; 
 int /*<<< orphan*/  CREDIT_CTRL ; 
 int /*<<< orphan*/  CREDIT_RETURN_ADDR ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  ERR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCF_IN_FREE ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct send_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct send_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_devdata*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct send_context *sc)
{
	struct hfi1_devdata *dd;
	unsigned long flags;
	u32 sw_index;
	u32 hw_context;

	if (!sc)
		return;

	sc->flags |= SCF_IN_FREE;	/* ensure no restarts */
	dd = sc->dd;
	if (!FUNC5(&sc->piowait))
		FUNC1(dd, "piowait list not empty!\n");
	sw_index = sc->sw_index;
	hw_context = sc->hw_context;
	FUNC6(sc);	/* make sure the HW is disabled */
	FUNC2(&sc->halt_work);

	FUNC8(&dd->sc_lock, flags);
	dd->send_contexts[sw_index].sc = NULL;

	/* clear/disable all registers set in sc_alloc */
	FUNC10(dd, hw_context, FUNC0(CTRL), 0);
	FUNC10(dd, hw_context, FUNC0(CHECK_ENABLE), 0);
	FUNC10(dd, hw_context, FUNC0(ERR_MASK), 0);
	FUNC10(dd, hw_context, FUNC0(CHECK_PARTITION_KEY), 0);
	FUNC10(dd, hw_context, FUNC0(CHECK_OPCODE), 0);
	FUNC10(dd, hw_context, FUNC0(CREDIT_RETURN_ADDR), 0);
	FUNC10(dd, hw_context, FUNC0(CREDIT_CTRL), 0);

	/* release the index and context for re-use */
	FUNC7(dd, sw_index, hw_context);
	FUNC9(&dd->sc_lock, flags);

	FUNC4(sc->sr);
	FUNC3(sc->buffers_allocated);
	FUNC4(sc);
}