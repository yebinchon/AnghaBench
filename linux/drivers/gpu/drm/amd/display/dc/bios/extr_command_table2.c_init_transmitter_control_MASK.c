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
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/ * transmitter_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dig1transmittercontrol ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * transmitter_control_v1_6 ; 

__attribute__((used)) static void FUNC3(struct bios_parser *bp)
{
	uint8_t frev;
	uint8_t crev;

	if (FUNC0(dig1transmittercontrol, frev, crev) == false)
		FUNC1();
	switch (crev) {
	case 6:
		bp->cmd_tbl.transmitter_control = transmitter_control_v1_6;
		break;
	default:
		FUNC2("Don't have transmitter_control for v%d\n", crev);
		bp->cmd_tbl.transmitter_control = NULL;
		break;
	}
}