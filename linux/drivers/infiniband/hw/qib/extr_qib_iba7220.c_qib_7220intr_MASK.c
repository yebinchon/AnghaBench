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
struct qib_devdata {int flags; unsigned int first_user_ctxt; int /*<<< orphan*/  pport; int /*<<< orphan*/ * rcd; int /*<<< orphan*/ * int_counter; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int QIB_BADINTR ; 
 int QIB_INITTED ; 
 int QIB_PRESENT ; 
 int QLOGIC_IB_I_BITSEXTANT ; 
 int QLOGIC_IB_I_ERROR ; 
 int QLOGIC_IB_I_GPIO ; 
 int QLOGIC_IB_I_RCVAVAIL_MASK ; 
 int QLOGIC_IB_I_RCVAVAIL_SHIFT ; 
 int QLOGIC_IB_I_RCVURG_MASK ; 
 int QLOGIC_IB_I_RCVURG_SHIFT ; 
 int QLOGIC_IB_I_SDMAINT ; 
 int QLOGIC_IB_I_SPIOBUFAVAIL ; 
 int /*<<< orphan*/  kr_intclear ; 
 int /*<<< orphan*/  kr_intstatus ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_devdata*,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct qib_devdata *dd = data;
	irqreturn_t ret;
	u64 istat;
	u64 ctxtrbits;
	u64 rmask;
	unsigned i;

	if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT) {
		/*
		 * This return value is not great, but we do not want the
		 * interrupt core code to remove our interrupt handler
		 * because we don't appear to be handling an interrupt
		 * during a chip reset.
		 */
		ret = IRQ_HANDLED;
		goto bail;
	}

	istat = FUNC4(dd, kr_intstatus);

	if (FUNC8(!istat)) {
		ret = IRQ_NONE; /* not our interrupt, or already handled */
		goto bail;
	}
	if (FUNC8(istat == -1)) {
		FUNC0(dd);
		/* don't know if it was our interrupt or not */
		ret = IRQ_NONE;
		goto bail;
	}

	FUNC7(*dd->int_counter);
	if (FUNC8(istat & (~QLOGIC_IB_I_BITSEXTANT |
			      QLOGIC_IB_I_GPIO | QLOGIC_IB_I_ERROR)))
		FUNC9(dd, istat);

	/*
	 * Clear the interrupt bits we found set, relatively early, so we
	 * "know" know the chip will have seen this by the time we process
	 * the queue, and will re-interrupt if necessary.  The processor
	 * itself won't take the interrupt again until we return.
	 */
	FUNC5(dd, kr_intclear, istat);

	/*
	 * Handle kernel receive queues before checking for pio buffers
	 * available since receives can overflow; piobuf waiters can afford
	 * a few extra cycles, since they were waiting anyway.
	 */
	ctxtrbits = istat &
		((QLOGIC_IB_I_RCVAVAIL_MASK << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
		 (QLOGIC_IB_I_RCVURG_MASK << QLOGIC_IB_I_RCVURG_SHIFT));
	if (ctxtrbits) {
		rmask = (1ULL << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
			(1ULL << QLOGIC_IB_I_RCVURG_SHIFT);
		for (i = 0; i < dd->first_user_ctxt; i++) {
			if (ctxtrbits & rmask) {
				ctxtrbits &= ~rmask;
				FUNC3(dd->rcd[i], NULL, NULL);
			}
			rmask <<= 1;
		}
		if (ctxtrbits) {
			ctxtrbits =
				(ctxtrbits >> QLOGIC_IB_I_RCVAVAIL_SHIFT) |
				(ctxtrbits >> QLOGIC_IB_I_RCVURG_SHIFT);
			FUNC1(dd, ctxtrbits);
		}
	}

	/* only call for SDmaInt */
	if (istat & QLOGIC_IB_I_SDMAINT)
		FUNC6(dd->pport, istat);

	if ((istat & QLOGIC_IB_I_SPIOBUFAVAIL) && (dd->flags & QIB_INITTED))
		FUNC2(dd);

	ret = IRQ_HANDLED;
bail:
	return ret;
}