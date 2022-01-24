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
struct TYPE_2__ {int flags; int /*<<< orphan*/  hcr_mutex; } ;
struct mthca_dev {TYPE_1__ cmd; } ;

/* Variables and functions */
 int MTHCA_CMD_POST_DOORBELLS ; 
 scalar_t__ fw_cmd_doorbell ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mthca_dev *dev,
			  u64 in_param,
			  u64 out_param,
			  u32 in_modifier,
			  u8 op_modifier,
			  u16 op,
			  u16 token,
			  int event)
{
	int err = 0;

	FUNC2(&dev->cmd.hcr_mutex);

	if (event && dev->cmd.flags & MTHCA_CMD_POST_DOORBELLS && fw_cmd_doorbell)
		FUNC0(dev, in_param, out_param, in_modifier,
					   op_modifier, op, token);
	else
		err = FUNC1(dev, in_param, out_param, in_modifier,
					 op_modifier, op, token, event);

	FUNC3(&dev->cmd.hcr_mutex);
	return err;
}