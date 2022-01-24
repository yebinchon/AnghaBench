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
struct io_pgtable_cfg {int /*<<< orphan*/  iommu_dev; int /*<<< orphan*/  coherent_walk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

__attribute__((used)) static void FUNC4(void *pages, size_t size,
				  struct io_pgtable_cfg *cfg)
{
	if (!cfg->coherent_walk)
		FUNC1(cfg->iommu_dev, FUNC0(pages),
				 size, DMA_TO_DEVICE);
	FUNC2((unsigned long)pages, FUNC3(size));
}