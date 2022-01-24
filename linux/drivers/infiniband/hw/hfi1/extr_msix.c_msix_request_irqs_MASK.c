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
struct sdma_engine {int /*<<< orphan*/  dd; } ;
struct hfi1_devdata {int num_sdma; int n_krcv_queues; struct sdma_engine* per_sdma; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_GENERAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  general_interrupt ; 
 struct hfi1_ctxtdata* FUNC1 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ctxtdata*) ; 
 int FUNC3 (struct hfi1_devdata*,struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hfi1_ctxtdata*) ; 
 int FUNC5 (struct sdma_engine*) ; 

int FUNC6(struct hfi1_devdata *dd)
{
	int i;
	int ret;

	ret = FUNC3(dd, dd, general_interrupt, NULL, 0, IRQ_GENERAL);
	if (ret < 0)
		return ret;

	for (i = 0; i < dd->num_sdma; i++) {
		struct sdma_engine *sde = &dd->per_sdma[i];

		ret = FUNC5(sde);
		if (ret)
			return ret;
		FUNC0(sde->dd, i);
	}

	for (i = 0; i < dd->n_krcv_queues; i++) {
		struct hfi1_ctxtdata *rcd = FUNC1(dd, i);

		if (rcd)
			ret = FUNC4(rcd);
		FUNC2(rcd);
		if (ret)
			return ret;
	}

	return 0;
}