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
struct sysmmu_drvdata {int active; int /*<<< orphan*/  lock; scalar_t__ sfrbase; int /*<<< orphan*/  clk_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_DISABLE ; 
 scalar_t__ REG_MMU_CFG ; 
 scalar_t__ REG_MMU_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sysmmu_drvdata *data)
{
	unsigned long flags;

	FUNC1(data->clk_master);

	FUNC2(&data->lock, flags);
	FUNC4(CTRL_DISABLE, data->sfrbase + REG_MMU_CTRL);
	FUNC4(0, data->sfrbase + REG_MMU_CFG);
	data->active = false;
	FUNC3(&data->lock, flags);

	FUNC0(data);
}