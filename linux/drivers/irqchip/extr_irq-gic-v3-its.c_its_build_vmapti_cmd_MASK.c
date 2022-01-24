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
typedef  int u32 ;
struct its_vpe {int dummy; } ;
struct its_node {int dummy; } ;
struct TYPE_5__ {TYPE_3__* vpe; int /*<<< orphan*/  virt_id; int /*<<< orphan*/  event_id; TYPE_1__* dev; scalar_t__ db_enabled; } ;
struct its_cmd_desc {TYPE_2__ its_vmapti_cmd; } ;
struct its_cmd_block {int dummy; } ;
struct TYPE_6__ {int vpe_db_lpi; int /*<<< orphan*/  vpe_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CMD_VMAPTI ; 
 int /*<<< orphan*/  FUNC0 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct its_cmd_block*) ; 
 struct its_vpe* FUNC7 (struct its_node*,TYPE_3__*) ; 

__attribute__((used)) static struct its_vpe *FUNC8(struct its_node *its,
					    struct its_cmd_block *cmd,
					    struct its_cmd_desc *desc)
{
	u32 db;

	if (desc->its_vmapti_cmd.db_enabled)
		db = desc->its_vmapti_cmd.vpe->vpe_db_lpi;
	else
		db = 1023;

	FUNC0(cmd, GITS_CMD_VMAPTI);
	FUNC2(cmd, desc->its_vmapti_cmd.dev->device_id);
	FUNC5(cmd, desc->its_vmapti_cmd.vpe->vpe_id);
	FUNC3(cmd, desc->its_vmapti_cmd.event_id);
	FUNC1(cmd, db);
	FUNC4(cmd, desc->its_vmapti_cmd.virt_id);

	FUNC6(cmd);

	return FUNC7(its, desc->its_vmapti_cmd.vpe);
}