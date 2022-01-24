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
struct its_node {int dummy; } ;
struct its_collection {int /*<<< orphan*/  target_address; int /*<<< orphan*/  col_id; } ;
struct TYPE_2__ {struct its_collection* col; int /*<<< orphan*/  valid; } ;
struct its_cmd_desc {TYPE_1__ its_mapc_cmd; } ;
struct its_cmd_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_MAPC ; 
 int /*<<< orphan*/  FUNC0 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*) ; 

__attribute__((used)) static struct its_collection *FUNC5(struct its_node *its,
						 struct its_cmd_block *cmd,
						 struct its_cmd_desc *desc)
{
	FUNC0(cmd, GITS_CMD_MAPC);
	FUNC1(cmd, desc->its_mapc_cmd.col->col_id);
	FUNC2(cmd, desc->its_mapc_cmd.col->target_address);
	FUNC3(cmd, desc->its_mapc_cmd.valid);

	FUNC4(cmd);

	return desc->its_mapc_cmd.col;
}