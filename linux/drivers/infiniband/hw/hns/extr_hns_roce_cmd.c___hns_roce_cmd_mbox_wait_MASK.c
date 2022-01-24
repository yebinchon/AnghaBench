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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct hns_roce_cmdq {size_t free_head; int /*<<< orphan*/  context_lock; struct hns_roce_cmd_context* context; scalar_t__ token_mask; } ;
struct hns_roce_dev {struct device* dev; struct hns_roce_cmdq cmd; } ;
struct hns_roce_cmd_context {size_t next; int result; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hns_roce_dev *hr_dev, u64 in_param,
				    u64 out_param, unsigned long in_modifier,
				    u8 op_modifier, u16 op,
				    unsigned long timeout)
{
	struct hns_roce_cmdq *cmd = &hr_dev->cmd;
	struct hns_roce_cmd_context *context;
	struct device *dev = hr_dev->dev;
	int ret;

	FUNC5(&cmd->context_lock);
	FUNC0(cmd->free_head < 0);
	context = &cmd->context[cmd->free_head];
	context->token += cmd->token_mask + 1;
	cmd->free_head = context->next;
	FUNC6(&cmd->context_lock);

	FUNC3(&context->done);

	ret = FUNC2(hr_dev, in_param, out_param,
					in_modifier, op_modifier, op,
					context->token, 1);
	if (ret)
		goto out;

	/*
	 * It is timeout when wait_for_completion_timeout return 0
	 * The return value is the time limit set in advance
	 * how many seconds showing
	 */
	if (!FUNC7(&context->done,
					 FUNC4(timeout))) {
		FUNC1(dev, "[cmd]wait_for_completion_timeout timeout\n");
		ret = -EBUSY;
		goto out;
	}

	ret = context->result;
	if (ret) {
		FUNC1(dev, "[cmd]event mod cmd process error!err=%d\n", ret);
		goto out;
	}

out:
	FUNC5(&cmd->context_lock);
	context->next = cmd->free_head;
	cmd->free_head = context - cmd->context;
	FUNC6(&cmd->context_lock);

	return ret;
}