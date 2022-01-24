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
struct TYPE_5__ {TYPE_3__* vpe; int /*<<< orphan*/  valid; TYPE_1__* col; } ;
struct its_cmd_desc {TYPE_2__ its_vmapp_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  vpe_id; int /*<<< orphan*/  vpt_page; } ;
struct TYPE_4__ {scalar_t__ target_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_VMAPP ; 
 scalar_t__ LPI_NRBITS ; 
 int /*<<< orphan*/  FUNC0 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct its_cmd_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct its_vpe* FUNC8 (struct its_node*,TYPE_3__*) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct its_vpe *FUNC10(struct its_node *its,
					   struct its_cmd_block *cmd,
					   struct its_cmd_desc *desc)
{
	unsigned long vpt_addr;
	u64 target;

	vpt_addr = FUNC9(FUNC7(desc->its_vmapp_cmd.vpe->vpt_page));
	target = desc->its_vmapp_cmd.col->target_address + its->vlpi_redist_offset;

	FUNC0(cmd, GITS_CMD_VMAPP);
	FUNC3(cmd, desc->its_vmapp_cmd.vpe->vpe_id);
	FUNC2(cmd, desc->its_vmapp_cmd.valid);
	FUNC1(cmd, target);
	FUNC4(cmd, vpt_addr);
	FUNC5(cmd, LPI_NRBITS - 1);

	FUNC6(cmd);

	return FUNC8(its, desc->its_vmapp_cmd.vpe);
}