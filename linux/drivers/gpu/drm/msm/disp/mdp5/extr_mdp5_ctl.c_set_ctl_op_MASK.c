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
typedef  int u32 ;
struct mdp5_pipeline {scalar_t__ r_mixer; struct mdp5_interface* intf; } ;
struct mdp5_interface {int type; int /*<<< orphan*/  mode; scalar_t__ num; } ;
struct mdp5_ctl {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ INTF0 ; 
#define  INTF_DSI 129 
#define  INTF_WB 128 
 int MDP5_CTL_OP_CMD_MODE ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int MDP5_CTL_OP_PACK_3D_ENABLE ; 
 int /*<<< orphan*/  MDP5_INTF_DSI_MODE_COMMAND ; 
 int /*<<< orphan*/  MDP5_INTF_WB_MODE_LINE ; 
 int /*<<< orphan*/  MODE_WB_2_LINE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp5_ctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct mdp5_ctl *ctl, struct mdp5_pipeline *pipeline)
{
	unsigned long flags;
	struct mdp5_interface *intf = pipeline->intf;
	u32 ctl_op = 0;

	if (!FUNC5(intf->type))
		ctl_op |= FUNC0(INTF0 + intf->num);

	switch (intf->type) {
	case INTF_DSI:
		if (intf->mode == MDP5_INTF_DSI_MODE_COMMAND)
			ctl_op |= MDP5_CTL_OP_CMD_MODE;
		break;

	case INTF_WB:
		if (intf->mode == MDP5_INTF_WB_MODE_LINE)
			ctl_op |= FUNC1(MODE_WB_2_LINE);
		break;

	default:
		break;
	}

	if (pipeline->r_mixer)
		ctl_op |= MDP5_CTL_OP_PACK_3D_ENABLE |
			  FUNC2(1);

	FUNC6(&ctl->hw_lock, flags);
	FUNC4(ctl, FUNC3(ctl->id), ctl_op);
	FUNC7(&ctl->hw_lock, flags);
}