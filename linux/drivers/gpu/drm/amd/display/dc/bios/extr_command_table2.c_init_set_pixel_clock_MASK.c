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
struct TYPE_2__ {int /*<<< orphan*/ * set_pixel_clock; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * set_pixel_clock_v7 ; 
 int /*<<< orphan*/  setpixelclock ; 

__attribute__((used)) static void FUNC2(struct bios_parser *bp)
{
	switch (FUNC0(setpixelclock)) {
	case 7:
		bp->cmd_tbl.set_pixel_clock = set_pixel_clock_v7;
		break;
	default:
		FUNC1("Don't have set_pixel_clock for v%d\n",
			 FUNC0(setpixelclock));
		bp->cmd_tbl.set_pixel_clock = NULL;
		break;
	}
}