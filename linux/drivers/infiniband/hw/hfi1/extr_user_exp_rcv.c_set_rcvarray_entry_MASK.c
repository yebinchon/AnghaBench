#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct tid_user_buf {scalar_t__ vaddr; struct page** pages; } ;
struct TYPE_5__ {unsigned int len; scalar_t__ addr; } ;
struct tid_rb_node {unsigned int npages; int freed; int /*<<< orphan*/  phys; TYPE_1__ mmu; int /*<<< orphan*/  rcventry; int /*<<< orphan*/  pages; struct tid_group* grp; int /*<<< orphan*/  dma_addr; } ;
struct tid_group {int dummy; } ;
struct page {int dummy; } ;
struct hfi1_filedata {int /*<<< orphan*/  subctxt; int /*<<< orphan*/  handler; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {TYPE_2__* pcidev; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  ctxt; struct hfi1_devdata* dd; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PT_EXPECTED ; 
 int /*<<< orphan*/  TID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct tid_rb_node*) ; 
 struct tid_rb_node* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct page**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct hfi1_filedata*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct hfi1_filedata *fd,
			      struct tid_user_buf *tbuf,
			      u32 rcventry, struct tid_group *grp,
			      u16 pageidx, unsigned int npages)
{
	int ret;
	struct hfi1_ctxtdata *uctxt = fd->uctxt;
	struct tid_rb_node *node;
	struct hfi1_devdata *dd = uctxt->dd;
	dma_addr_t phys;
	struct page **pages = tbuf->pages + pageidx;

	/*
	 * Allocate the node first so we can handle a potential
	 * failure before we've programmed anything.
	 */
	node = FUNC8(sizeof(*node) + (sizeof(struct page *) * npages),
		       GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	phys = FUNC11(dd->pcidev,
			      FUNC0(FUNC10(pages[0])),
			      npages * PAGE_SIZE, PCI_DMA_FROMDEVICE);
	if (FUNC2(&dd->pcidev->dev, phys)) {
		FUNC1(dd, "Failed to DMA map Exp Rcv pages 0x%llx\n",
			   phys);
		FUNC7(node);
		return -EFAULT;
	}

	node->mmu.addr = tbuf->vaddr + (pageidx * PAGE_SIZE);
	node->mmu.len = npages * PAGE_SIZE;
	node->phys = FUNC10(pages[0]);
	node->npages = npages;
	node->rcventry = rcventry;
	node->dma_addr = phys;
	node->grp = grp;
	node->freed = false;
	FUNC9(node->pages, pages, sizeof(struct page *) * npages);

	if (!fd->handler)
		ret = FUNC13(fd, &node->mmu);
	else
		ret = FUNC4(fd->handler, &node->mmu);

	if (ret) {
		FUNC3(TID, "Failed to insert RB node %u 0x%lx, 0x%lx %d",
			  node->rcventry, node->mmu.addr, node->phys, ret);
		FUNC12(dd->pcidev, phys, npages * PAGE_SIZE,
				 PCI_DMA_FROMDEVICE);
		FUNC7(node);
		return -EFAULT;
	}
	FUNC5(dd, rcventry, PT_EXPECTED, phys, FUNC6(npages) + 1);
	FUNC14(uctxt->ctxt, fd->subctxt, rcventry, npages,
			       node->mmu.addr, node->phys, phys);
	return 0;
}