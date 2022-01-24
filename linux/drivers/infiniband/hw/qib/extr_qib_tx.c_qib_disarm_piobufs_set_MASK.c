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
struct qib_pportdata {size_t port; } ;
struct qib_devdata {unsigned int num_pports; unsigned long* pio_writing; unsigned long* pioavailkernel; int /*<<< orphan*/  pioavail_lock; int /*<<< orphan*/  pport; int /*<<< orphan*/  (* f_sendctrl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pio_need_disarm; } ;

/* Variables and functions */
 int QIB_MAX_IB_PORTS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qib_devdata*,unsigned int) ; 
 struct qib_pportdata* FUNC3 (struct qib_devdata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned int,unsigned long*) ; 

void FUNC9(struct qib_devdata *dd, unsigned long *mask,
			    unsigned cnt)
{
	struct qib_pportdata *ppd, *pppd[QIB_MAX_IB_PORTS];
	unsigned i;
	unsigned long flags;

	for (i = 0; i < dd->num_pports; i++)
		pppd[i] = NULL;

	for (i = 0; i < cnt; i++) {
		if (!FUNC8(i, mask))
			continue;
		/*
		 * If the buffer is owned by the DMA hardware,
		 * reset the DMA engine.
		 */
		ppd = FUNC3(dd, i);
		if (ppd) {
			pppd[ppd->port] = ppd;
			continue;
		}
		/*
		 * If the kernel is writing the buffer or the buffer is
		 * owned by a user process, we can't clear it yet.
		 */
		FUNC5(&dd->pioavail_lock, flags);
		if (FUNC8(i, dd->pio_writing) ||
		    (!FUNC8(i << 1, dd->pioavailkernel) &&
		     FUNC2(dd, i))) {
			FUNC1(i, dd->pio_need_disarm);
		} else {
			dd->f_sendctrl(dd->pport, FUNC0(i));
		}
		FUNC6(&dd->pioavail_lock, flags);
	}

	/* do cancel_sends once per port that had sdma piobufs in error */
	for (i = 0; i < dd->num_pports; i++)
		if (pppd[i])
			FUNC4(pppd[i]);
}