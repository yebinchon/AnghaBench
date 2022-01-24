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
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {int link_credits; int vl15_init; int num_pports; struct hfi1_pportdata* pport; int /*<<< orphan*/  vau; int /*<<< orphan*/  vcu; } ;

/* Variables and functions */
 int CM_GLOBAL_CREDITS ; 
 int /*<<< orphan*/  CM_VAU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKEY_CHECK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfi1_cu ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 scalar_t__ FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_pportdata*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*) ; 

__attribute__((used)) static void FUNC7(struct hfi1_devdata *dd)
{
	int i;

	/* assign link credit variables */
	dd->vau = CM_VAU;
	dd->link_credits = CM_GLOBAL_CREDITS;
	if (FUNC3(dd))
		dd->link_credits--;
	dd->vcu = FUNC1(hfi1_cu);
	/* enough room for 8 MAD packets plus header - 17K */
	dd->vl15_init = (8 * (2048 + 128)) / FUNC5(dd->vau);
	if (dd->vl15_init > dd->link_credits)
		dd->vl15_init = dd->link_credits;

	FUNC6(dd);

	if (FUNC0(PKEY_CHECK))
		for (i = 0; i < dd->num_pports; i++) {
			struct hfi1_pportdata *ppd = &dd->pport[i];

			FUNC4(ppd);
		}
	FUNC2(dd);
}