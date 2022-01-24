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
struct sysmmu_drvdata {int active; int /*<<< orphan*/  clk_master; int /*<<< orphan*/  lock; scalar_t__ sfrbase; int /*<<< orphan*/  pgtable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_BLOCK ; 
 int /*<<< orphan*/  CTRL_ENABLE ; 
 scalar_t__ REG_MMU_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysmmu_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct sysmmu_drvdata *data)
{
	unsigned long flags;

	FUNC0(data);

	FUNC4(&data->lock, flags);
	FUNC6(CTRL_BLOCK, data->sfrbase + REG_MMU_CTRL);
	FUNC1(data);
	FUNC2(data, data->pgtable);
	FUNC6(CTRL_ENABLE, data->sfrbase + REG_MMU_CTRL);
	data->active = true;
	FUNC5(&data->lock, flags);

	/*
	 * SYSMMU driver keeps master's clock enabled only for the short
	 * time, while accessing the registers. For performing address
	 * translation during DMA transaction it relies on the client
	 * driver to enable it.
	 */
	FUNC3(data->clk_master);
}