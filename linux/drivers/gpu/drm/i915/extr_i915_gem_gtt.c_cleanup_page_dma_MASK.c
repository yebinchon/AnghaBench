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

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_address_space*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i915_address_space *vm,
			     struct i915_page_dma *p)
{
	FUNC0(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
	FUNC1(vm, p->page);
}