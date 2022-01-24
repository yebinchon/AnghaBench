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
typedef  void* u8 ;
struct request {int dummy; } ;
struct ide_atapi_pc {int* c; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int blk_size; scalar_t__ buffer_size; } ;
typedef  TYPE_1__ idetape_tape_t ;
struct TYPE_5__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  PC_FLAG_DMA_OK ; 
 int /*<<< orphan*/  PC_FLAG_WRITING ; 
 void* READ_6 ; 
 void* WRITE_6 ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 
 TYPE_2__* FUNC6 (struct request*) ; 

__attribute__((used)) static void FUNC7(idetape_tape_t *tape,
				   struct ide_atapi_pc *pc, struct request *rq,
				   u8 opcode)
{
	unsigned int length = FUNC1(rq) / (tape->blk_size >> 9);

	FUNC3(pc);
	FUNC5(FUNC2(length), (unsigned int *) &pc->c[1]);
	pc->c[1] = 1;

	if (FUNC0(rq) == tape->buffer_size)
		pc->flags |= PC_FLAG_DMA_OK;

	if (opcode == READ_6)
		pc->c[0] = READ_6;
	else if (opcode == WRITE_6) {
		pc->c[0] = WRITE_6;
		pc->flags |= PC_FLAG_WRITING;
	}

	FUNC4(FUNC6(rq)->cmd, pc->c, 12);
}