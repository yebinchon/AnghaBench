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
typedef  scalar_t__ u64 ;
struct its_vpe {int dummy; } ;
struct its_node {scalar_t__ vlpi_redist_offset; } ;
struct TYPE_5__ {TYPE_3__* vpe; int /*<<< orphan*/  its_list; int /*<<< orphan*/  seq_num; TYPE_1__* col; } ;
struct its_cmd_desc {TYPE_2__ its_vmovp_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  vpe_id; } ;
struct TYPE_4__ {scalar_t__ target_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_VMOVP ; 
 int /*<<< orphan*/  FUNC0 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd_block*) ; 
 struct its_vpe* FUNC6 (struct its_node*,TYPE_3__*) ; 

__attribute__((used)) static struct its_vpe *FUNC7(struct its_node *its,
					   struct its_cmd_block *cmd,
					   struct its_cmd_desc *desc)
{
	u64 target;

	target = desc->its_vmovp_cmd.col->target_address + its->vlpi_redist_offset;
	FUNC0(cmd, GITS_CMD_VMOVP);
	FUNC2(cmd, desc->its_vmovp_cmd.seq_num);
	FUNC1(cmd, desc->its_vmovp_cmd.its_list);
	FUNC4(cmd, desc->its_vmovp_cmd.vpe->vpe_id);
	FUNC3(cmd, target);

	FUNC5(cmd);

	return FUNC6(its, desc->its_vmovp_cmd.vpe);
}