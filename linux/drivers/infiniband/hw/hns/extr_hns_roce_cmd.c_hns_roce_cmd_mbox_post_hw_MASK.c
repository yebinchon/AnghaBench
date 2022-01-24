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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hns_roce_cmdq {int /*<<< orphan*/  hcr_mutex; } ;
struct hns_roce_dev {TYPE_1__* hw; struct hns_roce_cmdq cmd; } ;
struct TYPE_2__ {int (* post_mbox ) (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hns_roce_dev *hr_dev, u64 in_param,
				     u64 out_param, u32 in_modifier,
				     u8 op_modifier, u16 op, u16 token,
				     int event)
{
	struct hns_roce_cmdq *cmd = &hr_dev->cmd;
	int ret;

	FUNC0(&cmd->hcr_mutex);
	ret = hr_dev->hw->post_mbox(hr_dev, in_param, out_param, in_modifier,
				    op_modifier, op, token, event);
	FUNC1(&cmd->hcr_mutex);

	return ret;
}