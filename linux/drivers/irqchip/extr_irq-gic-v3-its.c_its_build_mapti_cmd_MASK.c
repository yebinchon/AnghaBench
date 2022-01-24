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
struct its_node {int dummy; } ;
struct its_collection {int /*<<< orphan*/  col_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  phys_id; int /*<<< orphan*/  event_id; TYPE_2__* dev; } ;
struct its_cmd_desc {TYPE_1__ its_mapti_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_MAPTI ; 
 struct its_collection* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct its_cmd_block*) ; 
 struct its_collection* FUNC7 (struct its_collection*) ; 

__attribute__((used)) static struct its_collection *FUNC8(struct its_node *its,
						  struct its_cmd_block *cmd,
						  struct its_cmd_desc *desc)
{
	struct its_collection *col;

	col = FUNC0(desc->its_mapti_cmd.dev,
			       desc->its_mapti_cmd.event_id);

	FUNC1(cmd, GITS_CMD_MAPTI);
	FUNC3(cmd, desc->its_mapti_cmd.dev->device_id);
	FUNC4(cmd, desc->its_mapti_cmd.event_id);
	FUNC5(cmd, desc->its_mapti_cmd.phys_id);
	FUNC2(cmd, col->col_id);

	FUNC6(cmd);

	return FUNC7(col);
}