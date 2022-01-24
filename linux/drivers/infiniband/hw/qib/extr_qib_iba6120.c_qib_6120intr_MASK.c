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
typedef  int u32 ;
struct qib_devdata {int flags; unsigned int first_user_ctxt; TYPE_1__* cspec; int /*<<< orphan*/ * rcd; int /*<<< orphan*/ * int_counter; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int lli_counter; int lli_thresh; int /*<<< orphan*/  lli_errs; } ;

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
 int QLOGIC_IB_I_SPIOBUFAVAIL ; 
 int /*<<< orphan*/  kr_intclear ; 
 int /*<<< orphan*/  kr_intstatus ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_devdata*,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct qib_devdata *dd = data;
	irqreturn_t ret;
	u32 istat, ctxtrbits, rmask, crcs = 0;
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

	if (FUNC7(!istat)) {
		ret = IRQ_NONE; /* not our interrupt, or already handled */
		goto bail;
	}
	if (FUNC7(istat == -1)) {
		FUNC0(dd);
		/* don't know if it was our interrupt or not */
		ret = IRQ_NONE;
		goto bail;
	}

	FUNC6(*dd->int_counter);

	if (FUNC7(istat & (~QLOGIC_IB_I_BITSEXTANT |
			      QLOGIC_IB_I_GPIO | QLOGIC_IB_I_ERROR)))
		FUNC8(dd, istat);

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
		rmask = (1U << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
			(1U << QLOGIC_IB_I_RCVURG_SHIFT);
		for (i = 0; i < dd->first_user_ctxt; i++) {
			if (ctxtrbits & rmask) {
				ctxtrbits &= ~rmask;
				crcs += FUNC3(dd->rcd[i],
						     &dd->cspec->lli_counter,
						     NULL);
			}
			rmask <<= 1;
		}
		if (crcs) {
			u32 cntr = dd->cspec->lli_counter;

			cntr += crcs;
			if (cntr) {
				if (cntr > dd->cspec->lli_thresh) {
					dd->cspec->lli_counter = 0;
					dd->cspec->lli_errs++;
				} else
					dd->cspec->lli_counter += cntr;
			}
		}


		if (ctxtrbits) {
			ctxtrbits =
				(ctxtrbits >> QLOGIC_IB_I_RCVAVAIL_SHIFT) |
				(ctxtrbits >> QLOGIC_IB_I_RCVURG_SHIFT);
			FUNC1(dd, ctxtrbits);
		}
	}

	if ((istat & QLOGIC_IB_I_SPIOBUFAVAIL) && (dd->flags & QIB_INITTED))
		FUNC2(dd);

	ret = IRQ_HANDLED;
bail:
	return ret;
}