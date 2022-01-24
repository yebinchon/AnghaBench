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
struct stratix10_svc_sh_memory {int /*<<< orphan*/  size; scalar_t__ addr; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gen_pool {int dummy; } ;
typedef  size_t phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct gen_pool* FUNC0 (int) ; 
 int /*<<< orphan*/  MEMREMAP_WC ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,void*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct gen_pool*,unsigned long,size_t,size_t,int) ; 
 int /*<<< orphan*/  gen_pool_best_fit ; 
 struct gen_pool* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gen_pool*) ; 
 int /*<<< orphan*/  FUNC6 (struct gen_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (scalar_t__,int) ; 
 size_t FUNC9 (scalar_t__,int) ; 

__attribute__((used)) static struct gen_pool *
FUNC10(struct platform_device *pdev,
		       struct stratix10_svc_sh_memory *sh_memory)
{
	struct device *dev = &pdev->dev;
	struct gen_pool *genpool;
	unsigned long vaddr;
	phys_addr_t paddr;
	size_t size;
	phys_addr_t begin;
	phys_addr_t end;
	void *va;
	size_t page_mask = PAGE_SIZE - 1;
	int min_alloc_order = 3;
	int ret;

	begin = FUNC9(sh_memory->addr, PAGE_SIZE);
	end = FUNC8(sh_memory->addr + sh_memory->size, PAGE_SIZE);
	paddr = begin;
	size = end - begin;
	va = FUNC7(paddr, size, MEMREMAP_WC);
	if (!va) {
		FUNC2(dev, "fail to remap shared memory\n");
		return FUNC0(-EINVAL);
	}
	vaddr = (unsigned long)va;
	FUNC1(dev,
		"reserved memory vaddr: %p, paddr: 0x%16x size: 0x%8x\n",
		va, (unsigned int)paddr, (unsigned int)size);
	if ((vaddr & page_mask) || (paddr & page_mask) ||
	    (size & page_mask)) {
		FUNC2(dev, "page is not aligned\n");
		return FUNC0(-EINVAL);
	}
	genpool = FUNC4(min_alloc_order, -1);
	if (!genpool) {
		FUNC2(dev, "fail to create genpool\n");
		return FUNC0(-ENOMEM);
	}
	FUNC6(genpool, gen_pool_best_fit, NULL);
	ret = FUNC3(genpool, vaddr, paddr, size, -1);
	if (ret) {
		FUNC2(dev, "fail to add memory chunk to the pool\n");
		FUNC5(genpool);
		return FUNC0(ret);
	}

	return genpool;
}