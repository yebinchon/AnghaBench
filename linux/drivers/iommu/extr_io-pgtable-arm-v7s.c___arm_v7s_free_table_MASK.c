#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct io_pgtable_cfg {int /*<<< orphan*/  coherent_walk; struct device* iommu_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_v7s_io_pgtable {int /*<<< orphan*/  l2_tables; TYPE_1__ iop; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC6(void *table, int lvl,
				 struct arm_v7s_io_pgtable *data)
{
	struct io_pgtable_cfg *cfg = &data->iop.cfg;
	struct device *dev = cfg->iommu_dev;
	size_t size = FUNC0(lvl);

	if (!cfg->coherent_walk)
		FUNC2(dev, FUNC1(table), size,
				 DMA_TO_DEVICE);
	if (lvl == 1)
		FUNC3((unsigned long)table, FUNC4(size));
	else
		FUNC5(data->l2_tables, table);
}