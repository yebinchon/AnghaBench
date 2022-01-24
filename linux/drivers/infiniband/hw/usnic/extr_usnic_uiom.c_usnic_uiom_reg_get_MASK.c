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
struct usnic_uiom_reg {unsigned long va; int offset; size_t length; int writable; int /*<<< orphan*/  owning_mm; int /*<<< orphan*/  chunk_list; struct usnic_uiom_pd* pd; } ;
struct usnic_uiom_pd {int /*<<< orphan*/  lock; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct usnic_uiom_reg* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOMMU_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (size_t) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_uiom_reg*) ; 
 struct usnic_uiom_reg* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sorted_diff_intervals ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long,unsigned long,int) ; 
 int FUNC9 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned long,size_t,int,int,struct usnic_uiom_reg*) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct usnic_uiom_reg*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct usnic_uiom_pd*) ; 

struct usnic_uiom_reg *FUNC16(struct usnic_uiom_pd *pd,
						unsigned long addr, size_t size,
						int writable, int dmasync)
{
	struct usnic_uiom_reg *uiomr;
	unsigned long va_base, vpn_start, vpn_last;
	unsigned long npages;
	int offset, err;
	FUNC1(sorted_diff_intervals);

	/*
	 * Intel IOMMU map throws an error if a translation entry is
	 * changed from read to write.  This module may not unmap
	 * and then remap the entry after fixing the permission
	 * b/c this open up a small windows where hw DMA may page fault
	 * Hence, make all entries to be writable.
	 */
	writable = 1;

	va_base = addr & PAGE_MASK;
	offset = addr & ~PAGE_MASK;
	npages = FUNC2(size + offset) >> PAGE_SHIFT;
	vpn_start = (addr & PAGE_MASK) >> PAGE_SHIFT;
	vpn_last = vpn_start + npages - 1;

	uiomr = FUNC4(sizeof(*uiomr), GFP_KERNEL);
	if (!uiomr)
		return FUNC0(-ENOMEM);

	uiomr->va = va_base;
	uiomr->offset = offset;
	uiomr->length = size;
	uiomr->writable = writable;
	uiomr->pd = pd;

	err = FUNC10(addr, size, writable, dmasync,
				   uiomr);
	if (err) {
		FUNC8("Failed get_pages vpn [0x%lx,0x%lx] err %d\n",
				vpn_start, vpn_last, err);
		goto out_free_uiomr;
	}

	FUNC6(&pd->lock);
	err = FUNC9(vpn_start, vpn_last,
						(writable) ? IOMMU_WRITE : 0,
						IOMMU_WRITE,
						&pd->root,
						&sorted_diff_intervals);
	if (err) {
		FUNC8("Failed disjoint interval vpn [0x%lx,0x%lx] err %d\n",
						vpn_start, vpn_last, err);
		goto out_put_pages;
	}

	err = FUNC12(&sorted_diff_intervals, uiomr);
	if (err) {
		FUNC8("Failed map interval vpn [0x%lx,0x%lx] err %d\n",
						vpn_start, vpn_last, err);
		goto out_put_intervals;

	}

	err = FUNC11(&pd->root, vpn_start, vpn_last,
					(writable) ? IOMMU_WRITE : 0);
	if (err) {
		FUNC8("Failed insert interval vpn [0x%lx,0x%lx] err %d\n",
						vpn_start, vpn_last, err);
		goto out_unmap_intervals;
	}

	FUNC13(&sorted_diff_intervals);
	FUNC7(&pd->lock);

	return uiomr;

out_unmap_intervals:
	FUNC15(&sorted_diff_intervals, pd);
out_put_intervals:
	FUNC13(&sorted_diff_intervals);
out_put_pages:
	FUNC14(&uiomr->chunk_list, 0);
	FUNC7(&pd->lock);
	FUNC5(uiomr->owning_mm);
out_free_uiomr:
	FUNC3(uiomr);
	return FUNC0(err);
}