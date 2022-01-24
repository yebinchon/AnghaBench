#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fdt; int /*<<< orphan*/  var; int /*<<< orphan*/  ctx; int /*<<< orphan*/  tdt; TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  taskBar; int /*<<< orphan*/ * ipr; int /*<<< orphan*/ * tcr; } ;

/* Variables and functions */
 int BCOM_MAX_TASKS ; 
 TYPE_2__* bcom_eng ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int task;

	/* Stop all tasks */
	for (task=0; task<BCOM_MAX_TASKS; task++)
	{
		FUNC2(&bcom_eng->regs->tcr[task], 0);
		FUNC1(&bcom_eng->regs->ipr[task], 0);
	}

	FUNC3(&bcom_eng->regs->taskBar, 0ul);

	/* Release the SRAM zones */
	FUNC0(bcom_eng->tdt);
	FUNC0(bcom_eng->ctx);
	FUNC0(bcom_eng->var);
	FUNC0(bcom_eng->fdt);
}