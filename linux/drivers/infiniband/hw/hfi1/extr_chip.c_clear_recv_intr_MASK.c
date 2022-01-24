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
typedef  scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int ireg; int /*<<< orphan*/  imask; struct hfi1_devdata* dd; } ;

/* Variables and functions */
 scalar_t__ CCE_INT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct hfi1_ctxtdata *rcd)
{
	struct hfi1_devdata *dd = rcd->dd;
	u32 addr = CCE_INT_CLEAR + (8 * rcd->ireg);

	FUNC1(dd, addr, rcd->imask);
	/* force the above write on the chip and get a value back */
	(void)FUNC0(dd, addr);
}