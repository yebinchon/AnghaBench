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
struct TYPE_2__ {size_t free_head; int /*<<< orphan*/  event_sem; int /*<<< orphan*/  context_lock; struct mthca_cmd_context* context; scalar_t__ token_mask; } ;
struct mthca_dev {TYPE_1__ cmd; } ;
struct mthca_cmd_context {size_t next; int result; int /*<<< orphan*/  out_param; scalar_t__ status; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct mthca_dev *dev,
			  u64 in_param,
			  u64 *out_param,
			  int out_is_imm,
			  u32 in_modifier,
			  u8 op_modifier,
			  u16 op,
			  unsigned long timeout)
{
	int err = 0;
	struct mthca_cmd_context *context;

	FUNC1(&dev->cmd.event_sem);

	FUNC6(&dev->cmd.context_lock);
	FUNC0(dev->cmd.free_head < 0);
	context = &dev->cmd.context[dev->cmd.free_head];
	context->token += dev->cmd.token_mask + 1;
	dev->cmd.free_head = context->next;
	FUNC7(&dev->cmd.context_lock);

	FUNC2(&context->done);

	err = FUNC3(dev, in_param,
			     out_param ? *out_param : 0,
			     in_modifier, op_modifier,
			     op, context->token, 1);
	if (err)
		goto out;

	if (!FUNC9(&context->done, timeout)) {
		err = -EBUSY;
		goto out;
	}

	err = context->result;
	if (err)
		goto out;

	if (context->status) {
		FUNC4(dev, "Command %02x completed with status %02x\n",
			  op, context->status);
		err = FUNC5(context->status);
	}

	if (out_is_imm && out_param) {
		*out_param = context->out_param;
	} else if (out_is_imm) {
		err = -EINVAL;
		goto out;
	}

out:
	FUNC6(&dev->cmd.context_lock);
	context->next = dev->cmd.free_head;
	dev->cmd.free_head = context - dev->cmd.context;
	FUNC7(&dev->cmd.context_lock);

	FUNC8(&dev->cmd.event_sem);
	return err;
}