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
typedef  scalar_t__ u8 ;
struct its_node {int dummy; } ;
struct its_collection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  valid; TYPE_2__* dev; } ;
struct its_cmd_desc {TYPE_1__ its_mapd_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  itt; int /*<<< orphan*/  nr_ites; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GITS_CMD_MAPD ; 
 int /*<<< orphan*/  ITS_ITT_ALIGN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct its_cmd_block*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct its_collection *FUNC9(struct its_node *its,
						 struct its_cmd_block *cmd,
						 struct its_cmd_desc *desc)
{
	unsigned long itt_addr;
	u8 size = FUNC1(desc->its_mapd_cmd.dev->nr_ites);

	itt_addr = FUNC8(desc->its_mapd_cmd.dev->itt);
	itt_addr = FUNC0(itt_addr, ITS_ITT_ALIGN);

	FUNC2(cmd, GITS_CMD_MAPD);
	FUNC3(cmd, desc->its_mapd_cmd.dev->device_id);
	FUNC5(cmd, size - 1);
	FUNC4(cmd, itt_addr);
	FUNC6(cmd, desc->its_mapd_cmd.valid);

	FUNC7(cmd);

	return NULL;
}