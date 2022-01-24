#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct its_node {int dummy; } ;
struct its_collection {int dummy; } ;
struct TYPE_5__ {TYPE_1__* col; int /*<<< orphan*/  event_id; TYPE_3__* dev; } ;
struct its_cmd_desc {TYPE_2__ its_movi_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  device_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  col_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_MOVI ; 
 struct its_collection* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd_block*) ; 
 struct its_collection* FUNC6 (struct its_collection*) ; 

__attribute__((used)) static struct its_collection *FUNC7(struct its_node *its,
						 struct its_cmd_block *cmd,
						 struct its_cmd_desc *desc)
{
	struct its_collection *col;

	col = FUNC0(desc->its_movi_cmd.dev,
			       desc->its_movi_cmd.event_id);

	FUNC1(cmd, GITS_CMD_MOVI);
	FUNC3(cmd, desc->its_movi_cmd.dev->device_id);
	FUNC4(cmd, desc->its_movi_cmd.event_id);
	FUNC2(cmd, desc->its_movi_cmd.col->col_id);

	FUNC5(cmd);

	return FUNC6(col);
}