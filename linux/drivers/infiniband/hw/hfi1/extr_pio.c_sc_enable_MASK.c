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
struct send_context {int hw_context; int /*<<< orphan*/  alloc_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  sw_index; scalar_t__ sr_tail; scalar_t__ sr_head; scalar_t__ fill_wrap; scalar_t__ fill; scalar_t__ alloc_free; scalar_t__ free; scalar_t__* hw_free; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int /*<<< orphan*/  sc_init_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_CTXT_ENABLE_SMASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  ERR_CLEAR ; 
 int /*<<< orphan*/  ERR_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCF_ENABLED ; 
 int /*<<< orphan*/  SEND_PIO_INIT_CTXT ; 
 int SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_MASK ; 
 int SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_SHIFT ; 
 int SEND_PIO_INIT_CTXT_PIO_SINGLE_CTXT_INIT_SMASK ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct hfi1_devdata*) ; 
 int FUNC3 (struct hfi1_devdata*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct send_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hfi1_devdata*,int,int,int) ; 

int FUNC12(struct send_context *sc)
{
	u64 sc_ctrl, reg, pio;
	struct hfi1_devdata *dd;
	unsigned long flags;
	int ret = 0;

	if (!sc)
		return -EINVAL;
	dd = sc->dd;

	/*
	 * Obtain the allocator lock to guard against any allocation
	 * attempts (which should not happen prior to context being
	 * enabled). On the release/disable side we don't need to
	 * worry about locking since the releaser will not do anything
	 * if the context accounting values have not changed.
	 */
	FUNC6(&sc->alloc_lock, flags);
	sc_ctrl = FUNC3(dd, sc->hw_context, FUNC0(CTRL));
	if ((sc_ctrl & FUNC0(CTRL_CTXT_ENABLE_SMASK)))
		goto unlock; /* already enabled */

	/* IMPORTANT: only clear free and fill if transitioning 0 -> 1 */

	*sc->hw_free = 0;
	sc->free = 0;
	sc->alloc_free = 0;
	sc->fill = 0;
	sc->fill_wrap = 0;
	sc->sr_head = 0;
	sc->sr_tail = 0;
	sc->flags = 0;
	/* the alloc lock insures no fast path allocation */
	FUNC4(sc);

	/*
	 * Clear all per-context errors.  Some of these will be set when
	 * we are re-enabling after a context halt.  Now that the context
	 * is disabled, the halt will not clear until after the PIO init
	 * engine runs below.
	 */
	reg = FUNC3(dd, sc->hw_context, FUNC0(ERR_STATUS));
	if (reg)
		FUNC11(dd, sc->hw_context, FUNC0(ERR_CLEAR), reg);

	/*
	 * The HW PIO initialization engine can handle only one init
	 * request at a time. Serialize access to each device's engine.
	 */
	FUNC5(&dd->sc_init_lock);
	/*
	 * Since access to this code block is serialized and
	 * each access waits for the initialization to complete
	 * before releasing the lock, the PIO initialization engine
	 * should not be in use, so we don't have to wait for the
	 * InProgress bit to go down.
	 */
	pio = ((sc->hw_context & SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_MASK) <<
	       SEND_PIO_INIT_CTXT_PIO_CTXT_NUM_SHIFT) |
		SEND_PIO_INIT_CTXT_PIO_SINGLE_CTXT_INIT_SMASK;
	FUNC10(dd, SEND_PIO_INIT_CTXT, pio);
	/*
	 * Wait until the engine is done.  Give the chip the required time
	 * so, hopefully, we read the register just once.
	 */
	FUNC9(2);
	ret = FUNC2(dd);
	FUNC7(&dd->sc_init_lock);
	if (ret) {
		FUNC1(dd,
			   "sctxt%u(%u): Context not enabled due to init failure %d\n",
			   sc->sw_index, sc->hw_context, ret);
		goto unlock;
	}

	/*
	 * All is well. Enable the context.
	 */
	sc_ctrl |= FUNC0(CTRL_CTXT_ENABLE_SMASK);
	FUNC11(dd, sc->hw_context, FUNC0(CTRL), sc_ctrl);
	/*
	 * Read SendCtxtCtrl to force the write out and prevent a timing
	 * hazard where a PIO write may reach the context before the enable.
	 */
	FUNC3(dd, sc->hw_context, FUNC0(CTRL));
	sc->flags |= SCF_ENABLED;

unlock:
	FUNC8(&sc->alloc_lock, flags);

	return ret;
}