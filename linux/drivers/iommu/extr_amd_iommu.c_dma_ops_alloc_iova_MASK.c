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
typedef  scalar_t__ u64 ;
struct dma_ops_domain {int /*<<< orphan*/  iovad; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC4(struct device *dev,
					struct dma_ops_domain *dma_dom,
					unsigned int pages, u64 dma_mask)
{
	unsigned long pfn = 0;

	pages = FUNC2(pages);

	if (dma_mask > FUNC0(32))
		pfn = FUNC3(&dma_dom->iovad, pages,
				      FUNC1(FUNC0(32)), false);

	if (!pfn)
		pfn = FUNC3(&dma_dom->iovad, pages,
				      FUNC1(dma_mask), true);

	return (pfn << PAGE_SHIFT);
}