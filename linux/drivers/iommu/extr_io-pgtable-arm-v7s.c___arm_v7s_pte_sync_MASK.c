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
struct io_pgtable_cfg {int /*<<< orphan*/  iommu_dev; scalar_t__ coherent_walk; } ;
typedef  int /*<<< orphan*/  arm_v7s_iopte ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(arm_v7s_iopte *ptep, int num_entries,
			       struct io_pgtable_cfg *cfg)
{
	if (cfg->coherent_walk)
		return;

	FUNC1(cfg->iommu_dev, FUNC0(ptep),
				   num_entries * sizeof(*ptep), DMA_TO_DEVICE);
}