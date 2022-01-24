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
struct TYPE_4__ {int sub_type; int /*<<< orphan*/  pkt_reformat; TYPE_1__* dev; int /*<<< orphan*/  modify_hdr; } ;
struct mlx5_ib_flow_action {TYPE_2__ flow_action_raw; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
#define  MLX5_IB_FLOW_ACTION_DECAP 130 
#define  MLX5_IB_FLOW_ACTION_MODIFY_HEADER 129 
#define  MLX5_IB_FLOW_ACTION_PACKET_REFORMAT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mlx5_ib_flow_action *maction)
{
	switch (maction->flow_action_raw.sub_type) {
	case MLX5_IB_FLOW_ACTION_MODIFY_HEADER:
		FUNC0(maction->flow_action_raw.dev->mdev,
					   maction->flow_action_raw.modify_hdr);
		break;
	case MLX5_IB_FLOW_ACTION_PACKET_REFORMAT:
		FUNC1(maction->flow_action_raw.dev->mdev,
					     maction->flow_action_raw.pkt_reformat);
		break;
	case MLX5_IB_FLOW_ACTION_DECAP:
		break;
	default:
		break;
	}
}