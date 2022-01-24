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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DMA_DIRECT_REMAP ; 
 int /*<<< orphan*/  CONFIG_DMA_REMAP ; 
 unsigned long DMA_ATTR_FORCE_CONTIGUOUS ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_MAPPING_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct device*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC4 (struct device*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,size_t,struct page**,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC9 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static void *FUNC11(struct device *dev, size_t size,
		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
{
	bool coherent = FUNC4(dev);
	int ioprot = FUNC6(DMA_BIDIRECTIONAL, coherent, attrs);
	struct page *page = NULL;
	void *cpu_addr;

	gfp |= __GFP_ZERO;

	if (FUNC0(CONFIG_DMA_REMAP) && FUNC7(gfp) &&
	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
		return FUNC9(dev, size, handle, gfp, attrs);

	if (FUNC0(CONFIG_DMA_DIRECT_REMAP) &&
	    !FUNC7(gfp) && !coherent)
		cpu_addr = FUNC5(FUNC1(size), &page, gfp);
	else
		cpu_addr = FUNC8(dev, size, &page, gfp, attrs);
	if (!cpu_addr)
		return NULL;

	*handle = FUNC3(dev, FUNC10(page), size, ioprot);
	if (*handle == DMA_MAPPING_ERROR) {
		FUNC2(dev, size, cpu_addr);
		return NULL;
	}

	return cpu_addr;
}