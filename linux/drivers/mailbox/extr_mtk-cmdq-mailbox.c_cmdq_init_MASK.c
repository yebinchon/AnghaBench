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
struct cmdq {int /*<<< orphan*/  clock; scalar_t__ base; } ;

/* Variables and functions */
 int CMDQ_MAX_EVENT ; 
 scalar_t__ CMDQ_SYNC_TOKEN_UPDATE ; 
 int CMDQ_THR_ACTIVE_SLOT_CYCLES ; 
 scalar_t__ CMDQ_THR_SLOT_CYCLES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct cmdq *cmdq)
{
	int i;

	FUNC0(FUNC2(cmdq->clock) < 0);
	FUNC3(CMDQ_THR_ACTIVE_SLOT_CYCLES, cmdq->base + CMDQ_THR_SLOT_CYCLES);
	for (i = 0; i <= CMDQ_MAX_EVENT; i++)
		FUNC3(i, cmdq->base + CMDQ_SYNC_TOKEN_UPDATE);
	FUNC1(cmdq->clock);
}