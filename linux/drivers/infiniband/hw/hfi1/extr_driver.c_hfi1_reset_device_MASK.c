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
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {int flags; int num_pports; struct hfi1_pportdata* pport; scalar_t__ rcd; int /*<<< orphan*/  kregbase1; } ;
struct TYPE_2__ {scalar_t__ sps_ctxts; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int HFI1_HAS_SEND_DMA ; 
 int HFI1_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int) ; 
 int FUNC2 (struct hfi1_devdata*,int) ; 
 struct hfi1_devdata* FUNC3 (int) ; 
 int /*<<< orphan*/  hfi1_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*) ; 
 TYPE_1__ hfi1_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_pportdata*) ; 

int FUNC9(int unit)
{
	int ret;
	struct hfi1_devdata *dd = FUNC3(unit);
	struct hfi1_pportdata *ppd;
	int pidx;

	if (!dd) {
		ret = -ENODEV;
		goto bail;
	}

	FUNC1(dd, "Reset on unit %u requested\n", unit);

	if (!dd->kregbase1 || !(dd->flags & HFI1_PRESENT)) {
		FUNC1(dd,
			    "Invalid unit number %u or not initialized or not present\n",
			    unit);
		ret = -ENXIO;
		goto bail;
	}

	/* If there are any user/vnic contexts, we cannot reset */
	FUNC5(&hfi1_mutex);
	if (dd->rcd)
		if (hfi1_stats.sps_ctxts) {
			FUNC6(&hfi1_mutex);
			ret = -EBUSY;
			goto bail;
		}
	FUNC6(&hfi1_mutex);

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;

		FUNC8(ppd);
	}
	if (dd->flags & HFI1_HAS_SEND_DMA)
		FUNC7(dd);

	FUNC4(dd);

	ret = FUNC2(dd, 1);

	if (ret)
		FUNC0(dd,
			   "Reinitialize unit %u after reset failed with %d\n",
			   unit, ret);
	else
		FUNC1(dd, "Reinitialized unit %u after resetting\n",
			    unit);

bail:
	return ret;
}