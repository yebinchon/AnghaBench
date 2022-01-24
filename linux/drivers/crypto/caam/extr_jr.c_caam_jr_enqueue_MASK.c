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
struct device {int dummy; } ;
struct caam_jrentry_info {int desc_size; int /*<<< orphan*/  desc_addr_dma; void* cbkarg; void* callbk; int /*<<< orphan*/ * desc_addr_virt; } ;
struct caam_drv_private_jr {int head; int /*<<< orphan*/  inplock; TYPE_1__* rregs; scalar_t__ inpring_avail; int /*<<< orphan*/  inpring; struct caam_jrentry_info* entinfo; int /*<<< orphan*/  tail; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  inpring_avail; int /*<<< orphan*/  inpring_jobadd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EBUSY ; 
 int EIO ; 
 int HDR_JD_LENGTH_MASK ; 
 int JOBR_DEPTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct caam_drv_private_jr* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

int FUNC15(struct device *dev, u32 *desc,
		    void (*cbk)(struct device *dev, u32 *desc,
				u32 status, void *areq),
		    void *areq)
{
	struct caam_drv_private_jr *jrp = FUNC5(dev);
	struct caam_jrentry_info *head_entry;
	int head, tail, desc_size;
	dma_addr_t desc_dma;

	desc_size = (FUNC2(*desc) & HDR_JD_LENGTH_MASK) * sizeof(u32);
	desc_dma = FUNC6(dev, desc, desc_size, DMA_TO_DEVICE);
	if (FUNC7(dev, desc_dma)) {
		FUNC4(dev, "caam_jr_enqueue(): can't map jobdesc\n");
		return -EIO;
	}

	FUNC12(&jrp->inplock);

	head = jrp->head;
	tail = FUNC1(jrp->tail);

	if (!jrp->inpring_avail ||
	    FUNC0(head, tail, JOBR_DEPTH) <= 0) {
		FUNC13(&jrp->inplock);
		FUNC8(dev, desc_dma, desc_size, DMA_TO_DEVICE);
		return -EBUSY;
	}

	head_entry = &jrp->entinfo[head];
	head_entry->desc_addr_virt = desc;
	head_entry->desc_size = desc_size;
	head_entry->callbk = (void *)cbk;
	head_entry->cbkarg = areq;
	head_entry->desc_addr_dma = desc_dma;

	FUNC9(jrp->inpring, head, FUNC3(desc_dma));

	/*
	 * Guarantee that the descriptor's DMA address has been written to
	 * the next slot in the ring before the write index is updated, since
	 * other cores may update this index independently.
	 */
	FUNC11();

	jrp->head = (head + 1) & (JOBR_DEPTH - 1);

	/*
	 * Ensure that all job information has been written before
	 * notifying CAAM that a new job was added to the input ring
	 * using a memory barrier. The wr_reg32() uses api iowrite32()
	 * to do the register write. iowrite32() issues a memory barrier
	 * before the write operation.
	 */

	FUNC14(&jrp->rregs->inpring_jobadd, 1);

	jrp->inpring_avail--;
	if (!jrp->inpring_avail)
		jrp->inpring_avail = FUNC10(&jrp->rregs->inpring_avail);

	FUNC13(&jrp->inplock);

	return 0;
}