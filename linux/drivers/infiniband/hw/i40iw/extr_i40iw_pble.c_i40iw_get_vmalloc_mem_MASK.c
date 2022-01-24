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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct i40iw_hw {scalar_t__ dev_context; } ;
struct i40iw_chunk {int size; int pg_cnt; int /*<<< orphan*/  type; int /*<<< orphan*/ * dmaaddrs; scalar_t__ vaddr; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40IW_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  I40IW_VMALLOC ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_hw*,struct i40iw_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct page* FUNC6 (void*) ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(struct i40iw_hw *hw,
						    struct i40iw_chunk *chunk,
						    int pg_cnt)
{
	struct pci_dev *pcidev = (struct pci_dev *)hw->dev_context;
	struct page *page;
	u8 *addr;
	u32 size;
	int i;

	chunk->dmaaddrs = FUNC4(pg_cnt << 3, GFP_KERNEL);
	if (!chunk->dmaaddrs)
		return I40IW_ERR_NO_MEMORY;
	size = PAGE_SIZE * pg_cnt;
	chunk->vaddr = FUNC5(size);
	if (!chunk->vaddr) {
		FUNC3(chunk->dmaaddrs);
		chunk->dmaaddrs = NULL;
		return I40IW_ERR_NO_MEMORY;
	}
	chunk->size = size;
	addr = (u8 *)chunk->vaddr;
	for (i = 0; i < pg_cnt; i++) {
		page = FUNC6((void *)addr);
		if (!page)
			break;
		chunk->dmaaddrs[i] = FUNC0(&pcidev->dev, page, 0,
						  PAGE_SIZE, DMA_BIDIRECTIONAL);
		if (FUNC1(&pcidev->dev, chunk->dmaaddrs[i]))
			break;
		addr += PAGE_SIZE;
	}

	chunk->pg_cnt = i;
	chunk->type = I40IW_VMALLOC;
	if (i == pg_cnt)
		return 0;

	FUNC2(hw, chunk);
	return I40IW_ERR_NO_MEMORY;
}