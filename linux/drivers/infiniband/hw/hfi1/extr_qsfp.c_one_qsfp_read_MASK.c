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
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QSFP_WAIT ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 

int FUNC4(struct hfi1_pportdata *ppd, u32 target, int addr, void *bp,
		  int len)
{
	struct hfi1_devdata *dd = ppd->dd;
	u32 resource = FUNC2(dd);
	int ret;

	ret = FUNC0(dd, resource, QSFP_WAIT);
	if (ret)
		return ret;
	ret = FUNC1(ppd, target, addr, bp, len);
	FUNC3(dd, resource);

	return ret;
}