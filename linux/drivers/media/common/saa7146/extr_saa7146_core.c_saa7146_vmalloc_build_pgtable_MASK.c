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
struct saa7146_pgtable {int nents; int /*<<< orphan*/ * slist; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 long PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_dev*,struct saa7146_pgtable*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,struct saa7146_pgtable*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct saa7146_pgtable*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (long) ; 
 int /*<<< orphan*/ * FUNC8 (void*,int) ; 

void *FUNC9(struct pci_dev *pci, long length, struct saa7146_pgtable *pt)
{
	int pages = (length+PAGE_SIZE-1)/PAGE_SIZE;
	void *mem = FUNC7(length);
	int slen = 0;

	if (NULL == mem)
		goto err_null;

	if (!(pt->slist = FUNC8(mem, pages)))
		goto err_free_mem;

	if (FUNC3(pci, pt))
		goto err_free_slist;

	pt->nents = pages;
	slen = FUNC1(pci,pt->slist,pt->nents,PCI_DMA_FROMDEVICE);
	if (0 == slen)
		goto err_free_pgtable;

	if (0 != FUNC4(pci, pt, pt->slist, slen))
		goto err_unmap_sg;

	return mem;

err_unmap_sg:
	FUNC2(pci, pt->slist, pt->nents, PCI_DMA_FROMDEVICE);
err_free_pgtable:
	FUNC5(pci, pt);
err_free_slist:
	FUNC0(pt->slist);
	pt->slist = NULL;
err_free_mem:
	FUNC6(mem);
err_null:
	return NULL;
}