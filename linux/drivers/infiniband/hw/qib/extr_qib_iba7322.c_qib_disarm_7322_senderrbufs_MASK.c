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
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int piobcnt2k; int piobcnt4k; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int NUM_VL15_BUFS ; 
 scalar_t__ kr_sendbuffererror ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,unsigned long*,int) ; 
 unsigned long FUNC1 (struct qib_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,scalar_t__,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct qib_pportdata *ppd)
{
	struct qib_devdata *dd = ppd->dd;
	u32 i;
	int any;
	u32 piobcnt = dd->piobcnt2k + dd->piobcnt4k + NUM_VL15_BUFS;
	u32 regcnt = (piobcnt + BITS_PER_LONG - 1) / BITS_PER_LONG;
	unsigned long sbuf[4];

	/*
	 * It's possible that sendbuffererror could have bits set; might
	 * have already done this as a result of hardware error handling.
	 */
	any = 0;
	for (i = 0; i < regcnt; ++i) {
		sbuf[i] = FUNC1(dd, kr_sendbuffererror + i);
		if (sbuf[i]) {
			any = 1;
			FUNC2(dd, kr_sendbuffererror + i, sbuf[i]);
		}
	}

	if (any)
		FUNC0(dd, sbuf, piobcnt);
}