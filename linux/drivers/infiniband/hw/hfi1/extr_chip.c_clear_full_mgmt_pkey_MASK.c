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
struct hfi1_pportdata {scalar_t__* pkeys; int /*<<< orphan*/  port; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_IB_CFG_PKEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hfi1_pportdata *ppd)
{
	if (ppd->pkeys[2] != 0) {
		ppd->pkeys[2] = 0;
		(void)FUNC1(ppd, HFI1_IB_CFG_PKEYS, 0);
		FUNC0(ppd->dd, ppd->port);
	}
}