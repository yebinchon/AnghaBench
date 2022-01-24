#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int int64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * semaphore; } ;
struct TYPE_5__ {int endidx; int* seq; TYPE_1__ act; } ;
typedef  TYPE_2__ hp_sdc_transaction ;

/* Variables and functions */
 int HP_SDC_ACT_DATAIN ; 
 int HP_SDC_ACT_POSTCMD ; 
 int HP_SDC_ACT_PRECMD ; 
 int HP_SDC_ACT_SEMAPHORE ; 
 int HP_SDC_CMD_READ_T1 ; 
 int HP_SDC_CMD_READ_T2 ; 
 int HP_SDC_CMD_READ_T3 ; 
 int HP_SDC_CMD_READ_T4 ; 
 int HP_SDC_CMD_READ_T5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  i8042tregs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC4 (uint8_t loadcmd, int numreg)
{
	hp_sdc_transaction t;
	uint8_t tseq[26] = {
		HP_SDC_ACT_PRECMD | HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN,
		0,
		HP_SDC_CMD_READ_T1, 2, 0, 0,
		HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN, 
		HP_SDC_CMD_READ_T2, 2, 0, 0,
		HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN, 
		HP_SDC_CMD_READ_T3, 2, 0, 0,
		HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN, 
		HP_SDC_CMD_READ_T4, 2, 0, 0,
		HP_SDC_ACT_POSTCMD | HP_SDC_ACT_DATAIN, 
		HP_SDC_CMD_READ_T5, 2, 0, 0
	};

	t.endidx = numreg * 5;

	tseq[1] = loadcmd;
	tseq[t.endidx - 4] |= HP_SDC_ACT_SEMAPHORE; /* numreg assumed > 1 */

	t.seq =			tseq;
	t.act.semaphore =	&i8042tregs;

	/* Sleep if output regs in use. */
	if (FUNC0(FUNC1(&i8042tregs)))
		return -1;

	if (FUNC2(&t)) {
		FUNC3(&i8042tregs);
		return -1;
	}
	
	/* Sleep until results come back. */
	if (FUNC0(FUNC1(&i8042tregs)))
		return -1;

	FUNC3(&i8042tregs);

	return (tseq[5] | 
		((uint64_t)(tseq[10]) << 8)  | ((uint64_t)(tseq[15]) << 16) |
		((uint64_t)(tseq[20]) << 24) | ((uint64_t)(tseq[25]) << 32));
}