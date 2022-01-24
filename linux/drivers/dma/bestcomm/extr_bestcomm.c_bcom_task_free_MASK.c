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
struct bcom_task {size_t tasknum; struct bcom_task* cookie; int /*<<< orphan*/  bd; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {TYPE_1__* tdt; } ;
struct TYPE_3__ {scalar_t__ stop; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_2__* bcom_eng ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcom_task*) ; 

void
FUNC4(struct bcom_task *tsk)
{
	/* Stop the task */
	FUNC0(tsk->tasknum);

	/* Clear TDT */
	bcom_eng->tdt[tsk->tasknum].start = 0;
	bcom_eng->tdt[tsk->tasknum].stop  = 0;

	/* Free everything */
	FUNC2(tsk->irq);
	FUNC1(tsk->bd);
	FUNC3(tsk->cookie);
	FUNC3(tsk);
}