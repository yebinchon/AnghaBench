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
typedef  int /*<<< orphan*/  u64 ;
struct its_node {struct its_cmd_block* cmd_write; scalar_t__ base; } ;
struct its_cmd_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ GITS_CWRITER ; 
 int /*<<< orphan*/  FUNC0 (struct its_node*,struct its_cmd_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct its_cmd_block *FUNC2(struct its_node *its)
{
	u64 wr = FUNC0(its, its->cmd_write);

	FUNC1(wr, its->base + GITS_CWRITER);

	return its->cmd_write;
}