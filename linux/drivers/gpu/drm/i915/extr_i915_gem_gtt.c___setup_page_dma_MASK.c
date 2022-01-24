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
struct i915_page_dma {int /*<<< orphan*/  page; int /*<<< orphan*/  daddr; } ;
struct i915_address_space {int /*<<< orphan*/  dma; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int DMA_ATTR_NO_WARN ; 
 int DMA_ATTR_SKIP_CPU_SYNC ; 
 int ENOMEM ; 
 int I915_GFP_ALLOW_FAIL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_address_space*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_address_space*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i915_address_space *vm,
			    struct i915_page_dma *p,
			    gfp_t gfp)
{
	p->page = FUNC3(vm, gfp | I915_GFP_ALLOW_FAIL);
	if (FUNC2(!p->page))
		return -ENOMEM;

	p->daddr = FUNC0(vm->dma,
				      p->page, 0, PAGE_SIZE,
				      PCI_DMA_BIDIRECTIONAL,
				      DMA_ATTR_SKIP_CPU_SYNC |
				      DMA_ATTR_NO_WARN);
	if (FUNC2(FUNC1(vm->dma, p->daddr))) {
		FUNC4(vm, p->page);
		return -ENOMEM;
	}

	return 0;
}