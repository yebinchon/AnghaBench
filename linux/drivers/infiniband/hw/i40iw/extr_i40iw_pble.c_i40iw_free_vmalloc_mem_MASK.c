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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct i40iw_hw {scalar_t__ dev_context; } ;
struct i40iw_chunk {int pg_cnt; scalar_t__ type; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/ * dmaaddrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i40iw_hw *hw, struct i40iw_chunk *chunk)
{
	struct pci_dev *pcidev = (struct pci_dev *)hw->dev_context;
	int i;

	if (!chunk->pg_cnt)
		goto done;
	for (i = 0; i < chunk->pg_cnt; i++)
		FUNC0(&pcidev->dev, chunk->dmaaddrs[i], PAGE_SIZE, DMA_BIDIRECTIONAL);

 done:
	FUNC1(chunk->dmaaddrs);
	chunk->dmaaddrs = NULL;
	FUNC2(chunk->vaddr);
	chunk->vaddr = NULL;
	chunk->type = 0;
}