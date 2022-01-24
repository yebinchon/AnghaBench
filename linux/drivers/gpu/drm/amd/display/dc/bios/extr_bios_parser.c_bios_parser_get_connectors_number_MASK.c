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
typedef  int /*<<< orphan*/  uint8_t ;
struct dc_bios {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v1_1; } ;
struct bios_parser {TYPE_2__ object_info_tbl; } ;
struct TYPE_3__ {int /*<<< orphan*/  usConnectorObjectTableOffset; } ;

/* Variables and functions */
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int /*<<< orphan*/  FUNC1 (struct bios_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC3(struct dc_bios *dcb)
{
	struct bios_parser *bp = FUNC0(dcb);

	return FUNC1(bp,
		FUNC2(bp->object_info_tbl.v1_1->usConnectorObjectTableOffset));
}