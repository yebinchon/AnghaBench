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
struct dma_ops_domain {int /*<<< orphan*/  iovad; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct dma_ops_domain *dma_dom,
			      unsigned long address,
			      unsigned int pages)
{
	pages = FUNC0(pages);
	address >>= PAGE_SHIFT;

	FUNC1(&dma_dom->iovad, address, pages);
}