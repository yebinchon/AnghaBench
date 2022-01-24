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
struct its_collection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_id; TYPE_2__* dev; } ;
struct its_cmd_desc {TYPE_1__ its_inv_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_INV ; 
 struct its_collection* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*) ; 
 struct its_collection* FUNC5 (struct its_collection*) ; 

__attribute__((used)) static struct its_collection *FUNC6(struct its_node *its,
						struct its_cmd_block *cmd,
						struct its_cmd_desc *desc)
{
	struct its_collection *col;

	col = FUNC0(desc->its_inv_cmd.dev,
			       desc->its_inv_cmd.event_id);

	FUNC1(cmd, GITS_CMD_INV);
	FUNC2(cmd, desc->its_inv_cmd.dev->device_id);
	FUNC3(cmd, desc->its_inv_cmd.event_id);

	FUNC4(cmd);

	return FUNC5(col);
}