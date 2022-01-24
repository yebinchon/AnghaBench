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
typedef  int u64 ;
struct hfi1_devdata {int rcvhdrtail_dummy_dma; TYPE_1__* pcidev; int /*<<< orphan*/  first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {int rcvhdrq_cnt; int /*<<< orphan*/ * rcvhdrq; int /*<<< orphan*/  rcvhdrq_dma; int /*<<< orphan*/  ctxt; int /*<<< orphan*/  rcvhdrqentsize; void* rcvhdrtail_kvaddr; int /*<<< orphan*/  rcvhdrqtailaddr_dma; int /*<<< orphan*/  flags; scalar_t__ is_vnic; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RCVHDRSIZE ; 
 int /*<<< orphan*/  DMA_RTAIL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int GFP_USER ; 
 int HDRQ_SIZE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  RCV_HDR_CNT ; 
 int RCV_HDR_CNT_CNT_MASK ; 
 int RCV_HDR_CNT_CNT_SHIFT ; 
 int /*<<< orphan*/  RCV_HDR_ENT_SIZE ; 
 int RCV_HDR_ENT_SIZE_ENT_SIZE_MASK ; 
 int RCV_HDR_ENT_SIZE_ENT_SIZE_SHIFT ; 
 int /*<<< orphan*/  RCV_HDR_SIZE ; 
 int RCV_HDR_SIZE_HDR_SIZE_MASK ; 
 int RCV_HDR_SIZE_HDR_SIZE_SHIFT ; 
 int /*<<< orphan*/  RCV_HDR_TAIL_ADDR ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*,unsigned int,...) ; 
 void* FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
{
	unsigned amt;
	u64 reg;

	if (!rcd->rcvhdrq) {
		gfp_t gfp_flags;

		amt = FUNC6(rcd);

		if (rcd->ctxt < dd->first_dyn_alloc_ctxt || rcd->is_vnic)
			gfp_flags = GFP_KERNEL;
		else
			gfp_flags = GFP_USER;
		rcd->rcvhdrq = FUNC3(&dd->pcidev->dev, amt,
						  &rcd->rcvhdrq_dma,
						  gfp_flags | __GFP_COMP);

		if (!rcd->rcvhdrq) {
			FUNC2(dd,
				   "attempt to allocate %d bytes for ctxt %u rcvhdrq failed\n",
				   amt, rcd->ctxt);
			goto bail;
		}

		if (FUNC0(rcd->flags, DMA_RTAIL) ||
		    FUNC1(rcd->flags, DMA_RTAIL)) {
			rcd->rcvhdrtail_kvaddr = FUNC3(&dd->pcidev->dev,
								    PAGE_SIZE,
								    &rcd->rcvhdrqtailaddr_dma,
								    gfp_flags);
			if (!rcd->rcvhdrtail_kvaddr)
				goto bail_free;
		}
	}
	/*
	 * These values are per-context:
	 *	RcvHdrCnt
	 *	RcvHdrEntSize
	 *	RcvHdrSize
	 */
	reg = ((u64)(rcd->rcvhdrq_cnt >> HDRQ_SIZE_SHIFT)
			& RCV_HDR_CNT_CNT_MASK)
		<< RCV_HDR_CNT_CNT_SHIFT;
	FUNC7(dd, rcd->ctxt, RCV_HDR_CNT, reg);
	reg = (FUNC5(rcd->rcvhdrqentsize)
			& RCV_HDR_ENT_SIZE_ENT_SIZE_MASK)
		<< RCV_HDR_ENT_SIZE_ENT_SIZE_SHIFT;
	FUNC7(dd, rcd->ctxt, RCV_HDR_ENT_SIZE, reg);
	reg = ((u64)DEFAULT_RCVHDRSIZE & RCV_HDR_SIZE_HDR_SIZE_MASK)
		<< RCV_HDR_SIZE_HDR_SIZE_SHIFT;
	FUNC7(dd, rcd->ctxt, RCV_HDR_SIZE, reg);

	/*
	 * Program dummy tail address for every receive context
	 * before enabling any receive context
	 */
	FUNC7(dd, rcd->ctxt, RCV_HDR_TAIL_ADDR,
			dd->rcvhdrtail_dummy_dma);

	return 0;

bail_free:
	FUNC2(dd,
		   "attempt to allocate 1 page for ctxt %u rcvhdrqtailaddr failed\n",
		   rcd->ctxt);
	FUNC4(&dd->pcidev->dev, amt, rcd->rcvhdrq,
			  rcd->rcvhdrq_dma);
	rcd->rcvhdrq = NULL;
bail:
	return -ENOMEM;
}