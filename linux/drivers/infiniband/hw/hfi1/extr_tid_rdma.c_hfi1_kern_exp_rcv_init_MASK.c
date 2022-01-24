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
struct hfi1_ctxtdata {scalar_t__ jkey; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HFI1_KERNEL_MAX_JKEY ; 
 scalar_t__ HFI1_KERNEL_MIN_JKEY ; 
 scalar_t__ TID_RDMA_JKEY ; 
 int FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hfi1_ctxtdata*,scalar_t__) ; 

int FUNC3(struct hfi1_ctxtdata *rcd, int reinit)
{
	if (reinit)
		return 0;

	FUNC0(TID_RDMA_JKEY < HFI1_KERNEL_MIN_JKEY);
	FUNC0(TID_RDMA_JKEY > HFI1_KERNEL_MAX_JKEY);
	rcd->jkey = TID_RDMA_JKEY;
	FUNC2(rcd->dd, rcd, rcd->jkey);
	return FUNC1(rcd);
}