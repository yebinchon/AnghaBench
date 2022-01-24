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
struct i915_address_space {unsigned int scratch_order; int /*<<< orphan*/  dma; int /*<<< orphan*/ * scratch; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i915_page_dma* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct i915_address_space *vm)
{
	struct i915_page_dma *p = FUNC3(&vm->scratch[0]);
	unsigned int order = vm->scratch_order;

	FUNC2(vm->dma, p->daddr, FUNC0(order) << PAGE_SHIFT,
		       PCI_DMA_BIDIRECTIONAL);
	FUNC1(p->page, order);
}