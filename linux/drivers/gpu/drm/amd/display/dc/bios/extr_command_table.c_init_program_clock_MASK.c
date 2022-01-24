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
struct TYPE_2__ {int /*<<< orphan*/ * program_clock; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetPixelClock ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * program_clock_v5 ; 
 int /*<<< orphan*/ * program_clock_v6 ; 

__attribute__((used)) static void FUNC2(struct bios_parser *bp)
{
	switch (FUNC0(SetPixelClock)) {
	case 5:
		bp->cmd_tbl.program_clock = program_clock_v5;
		break;
	case 6:
		bp->cmd_tbl.program_clock = program_clock_v6;
		break;
	default:
		FUNC1("Don't have program_clock for v%d\n",
			 FUNC0(SetPixelClock));
		bp->cmd_tbl.program_clock = NULL;
		break;
	}
}