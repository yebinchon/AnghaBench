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
struct its_vpe {int /*<<< orphan*/  vpe_id; } ;
struct its_node {int dummy; } ;
struct its_cmd_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_VSYNC ; 
 int /*<<< orphan*/  FUNC0 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*) ; 

__attribute__((used)) static void FUNC3(struct its_node *its,
				struct its_cmd_block *sync_cmd,
				struct its_vpe *sync_vpe)
{
	FUNC0(sync_cmd, GITS_CMD_VSYNC);
	FUNC1(sync_cmd, sync_vpe->vpe_id);

	FUNC2(sync_cmd);
}