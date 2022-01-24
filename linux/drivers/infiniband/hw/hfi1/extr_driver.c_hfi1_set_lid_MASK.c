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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_pportdata {int /*<<< orphan*/  port; int /*<<< orphan*/  lmc; int /*<<< orphan*/  lid; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_IB_CFG_LIDLMC ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct hfi1_pportdata *ppd, u32 lid, u8 lmc)
{
	struct hfi1_devdata *dd = ppd->dd;

	ppd->lid = lid;
	ppd->lmc = lmc;
	FUNC1(ppd, HFI1_IB_CFG_LIDLMC, 0);

	FUNC0(dd, "port %u: got a lid: 0x%x\n", ppd->port, lid);

	return 0;
}