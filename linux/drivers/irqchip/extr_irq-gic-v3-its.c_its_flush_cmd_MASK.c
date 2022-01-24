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
struct its_node {int flags; } ;
struct its_cmd_block {int dummy; } ;

/* Variables and functions */
 int ITS_FLAGS_CMDQ_NEEDS_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int) ; 
 int /*<<< orphan*/  ishst ; 

__attribute__((used)) static void FUNC2(struct its_node *its, struct its_cmd_block *cmd)
{
	/*
	 * Make sure the commands written to memory are observable by
	 * the ITS.
	 */
	if (its->flags & ITS_FLAGS_CMDQ_NEEDS_FLUSHING)
		FUNC1(cmd, sizeof(*cmd));
	else
		FUNC0(ishst);
}