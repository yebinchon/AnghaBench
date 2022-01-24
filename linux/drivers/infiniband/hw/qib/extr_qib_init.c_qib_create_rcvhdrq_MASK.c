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
typedef  int /*<<< orphan*/  u32 ;
struct qib_devdata {int rcvhdrcnt; int rcvhdrentsize; int flags; TYPE_1__* pcidev; int /*<<< orphan*/  first_user_ctxt; } ;
struct qib_ctxtdata {int node_id; unsigned int rcvhdrq_size; int /*<<< orphan*/ * rcvhdrq; int /*<<< orphan*/  rcvhdrq_phys; int /*<<< orphan*/ * user_event_mask; int /*<<< orphan*/  ctxt; int /*<<< orphan*/ * rcvhdrtail_kvaddr; int /*<<< orphan*/  rcvhdrqtailaddr_phys; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int GFP_USER ; 
 unsigned int PAGE_SIZE ; 
 int QIB_NODMA_RTAIL ; 
 int __GFP_COMP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned int) ; 

int FUNC9(struct qib_devdata *dd, struct qib_ctxtdata *rcd)
{
	unsigned amt;
	int old_node_id;

	if (!rcd->rcvhdrq) {
		dma_addr_t phys_hdrqtail;
		gfp_t gfp_flags;

		amt = FUNC0(dd->rcvhdrcnt * dd->rcvhdrentsize *
			    sizeof(u32), PAGE_SIZE);
		gfp_flags = (rcd->ctxt >= dd->first_user_ctxt) ?
			GFP_USER : GFP_KERNEL;

		old_node_id = FUNC1(&dd->pcidev->dev);
		FUNC6(&dd->pcidev->dev, rcd->node_id);
		rcd->rcvhdrq = FUNC2(
			&dd->pcidev->dev, amt, &rcd->rcvhdrq_phys,
			gfp_flags | __GFP_COMP);
		FUNC6(&dd->pcidev->dev, old_node_id);

		if (!rcd->rcvhdrq) {
			FUNC5(dd,
				"attempt to allocate %d bytes for ctxt %u rcvhdrq failed\n",
				amt, rcd->ctxt);
			goto bail;
		}

		if (rcd->ctxt >= dd->first_user_ctxt) {
			rcd->user_event_mask = FUNC8(PAGE_SIZE);
			if (!rcd->user_event_mask)
				goto bail_free_hdrq;
		}

		if (!(dd->flags & QIB_NODMA_RTAIL)) {
			FUNC6(&dd->pcidev->dev, rcd->node_id);
			rcd->rcvhdrtail_kvaddr = FUNC2(
				&dd->pcidev->dev, PAGE_SIZE, &phys_hdrqtail,
				gfp_flags);
			FUNC6(&dd->pcidev->dev, old_node_id);
			if (!rcd->rcvhdrtail_kvaddr)
				goto bail_free;
			rcd->rcvhdrqtailaddr_phys = phys_hdrqtail;
		}

		rcd->rcvhdrq_size = amt;
	}

	/* clear for security and sanity on each use */
	FUNC4(rcd->rcvhdrq, 0, rcd->rcvhdrq_size);
	if (rcd->rcvhdrtail_kvaddr)
		FUNC4(rcd->rcvhdrtail_kvaddr, 0, PAGE_SIZE);
	return 0;

bail_free:
	FUNC5(dd,
		"attempt to allocate 1 page for ctxt %u rcvhdrqtailaddr failed\n",
		rcd->ctxt);
	FUNC7(rcd->user_event_mask);
	rcd->user_event_mask = NULL;
bail_free_hdrq:
	FUNC3(&dd->pcidev->dev, amt, rcd->rcvhdrq,
			  rcd->rcvhdrq_phys);
	rcd->rcvhdrq = NULL;
bail:
	return -ENOMEM;
}