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
struct qedr_pbl_info {int num_pbls; int /*<<< orphan*/  pbl_size; } ;
struct qedr_pbl {int /*<<< orphan*/  pa; void* va; } ;
struct qedr_dev {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct qedr_pbl* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 struct qedr_pbl* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*,struct qedr_pbl_info*,struct qedr_pbl*) ; 

__attribute__((used)) static struct qedr_pbl *FUNC5(struct qedr_dev *dev,
					   struct qedr_pbl_info *pbl_info,
					   gfp_t flags)
{
	struct pci_dev *pdev = dev->pdev;
	struct qedr_pbl *pbl_table;
	dma_addr_t *pbl_main_tbl;
	dma_addr_t pa;
	void *va;
	int i;

	pbl_table = FUNC3(pbl_info->num_pbls, sizeof(*pbl_table), flags);
	if (!pbl_table)
		return FUNC0(-ENOMEM);

	for (i = 0; i < pbl_info->num_pbls; i++) {
		va = FUNC1(&pdev->dev, pbl_info->pbl_size, &pa,
					flags);
		if (!va)
			goto err;

		pbl_table[i].va = va;
		pbl_table[i].pa = pa;
	}

	/* Two-Layer PBLs, if we have more than one pbl we need to initialize
	 * the first one with physical pointers to all of the rest
	 */
	pbl_main_tbl = (dma_addr_t *)pbl_table[0].va;
	for (i = 0; i < pbl_info->num_pbls - 1; i++)
		pbl_main_tbl[i] = pbl_table[i + 1].pa;

	return pbl_table;

err:
	for (i--; i >= 0; i--)
		FUNC2(&pdev->dev, pbl_info->pbl_size,
				  pbl_table[i].va, pbl_table[i].pa);

	FUNC4(dev, pbl_info, pbl_table);

	return FUNC0(-ENOMEM);
}