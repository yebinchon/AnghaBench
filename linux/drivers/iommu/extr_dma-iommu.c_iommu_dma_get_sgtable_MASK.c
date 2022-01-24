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
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DMA_REMAP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t) ; 
 int PAGE_SHIFT ; 
 struct page** FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sg_table*,struct page**,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct page*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (void*) ; 
 struct page* FUNC8 (void*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct sg_table *sgt,
		void *cpu_addr, dma_addr_t dma_addr, size_t size,
		unsigned long attrs)
{
	struct page *page;
	int ret;

	if (FUNC0(CONFIG_DMA_REMAP) && FUNC3(cpu_addr)) {
		struct page **pages = FUNC2(cpu_addr);

		if (pages) {
			return FUNC5(sgt, pages,
					FUNC1(size) >> PAGE_SHIFT,
					0, size, GFP_KERNEL);
		}

		page = FUNC8(cpu_addr);
	} else {
		page = FUNC7(cpu_addr);
	}

	ret = FUNC4(sgt, 1, GFP_KERNEL);
	if (!ret)
		FUNC6(sgt->sgl, page, FUNC1(size), 0);
	return ret;
}