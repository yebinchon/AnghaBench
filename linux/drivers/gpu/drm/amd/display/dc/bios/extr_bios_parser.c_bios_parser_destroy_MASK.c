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
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;

/* Variables and functions */
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bios_parser*) ; 
 int /*<<< orphan*/  FUNC3 (struct bios_parser*) ; 

__attribute__((used)) static void FUNC4(struct dc_bios **dcb)
{
	struct bios_parser *bp = FUNC0(*dcb);

	if (!bp) {
		FUNC1();
		return;
	}

	FUNC2(bp);

	FUNC3(bp);
	*dcb = NULL;
}