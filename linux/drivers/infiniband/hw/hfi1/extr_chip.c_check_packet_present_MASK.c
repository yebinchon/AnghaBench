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
struct hfi1_ctxtdata {scalar_t__ seq_cnt; scalar_t__ head; int /*<<< orphan*/  ctxt; int /*<<< orphan*/  dd; int /*<<< orphan*/  rcvhdrtail_kvaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCV_HDR_TAIL ; 
 scalar_t__ FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct hfi1_ctxtdata *rcd)
{
	u32 tail;
	int present;

	if (!rcd->rcvhdrtail_kvaddr)
		present = (rcd->seq_cnt ==
				FUNC3(FUNC4(FUNC1(rcd))));
	else /* is RDMA rtail */
		present = (rcd->head != FUNC0(rcd));

	if (present)
		return 1;

	/* fall back to a CSR read, correct indpendent of DMA_RTAIL */
	tail = (u32)FUNC2(rcd->dd, rcd->ctxt, RCV_HDR_TAIL);
	return rcd->head != tail;
}