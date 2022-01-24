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
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct mlx5_ib_flow_action {TYPE_1__ esp_aes_gcm; } ;
struct ib_flow_action {int type; } ;

/* Variables and functions */
#define  IB_FLOW_ACTION_ESP 129 
#define  IB_FLOW_ACTION_UNSPECIFIED 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_flow_action*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_flow_action*) ; 
 struct mlx5_ib_flow_action* FUNC4 (struct ib_flow_action*) ; 

__attribute__((used)) static int FUNC5(struct ib_flow_action *action)
{
	struct mlx5_ib_flow_action *maction = FUNC4(action);

	switch (action->type) {
	case IB_FLOW_ACTION_ESP:
		/*
		 * We only support aes_gcm by now, so we implicitly know this is
		 * the underline crypto.
		 */
		FUNC2(maction->esp_aes_gcm.ctx);
		break;
	case IB_FLOW_ACTION_UNSPECIFIED:
		FUNC3(maction);
		break;
	default:
		FUNC0(true);
		break;
	}

	FUNC1(maction);
	return 0;
}