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
struct i40iw_sc_dev {int /*<<< orphan*/  cqp_lock; int /*<<< orphan*/  cqp_cmd_head; int /*<<< orphan*/  cqp; } ;
struct cqp_commands_info {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int FUNC0 (struct i40iw_sc_dev*,struct cqp_commands_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

enum i40iw_status_code FUNC6(struct i40iw_sc_dev *dev)
{
	enum i40iw_status_code status = 0;
	struct cqp_commands_info *pcmdinfo;
	unsigned long flags;

	FUNC4(&dev->cqp_lock, flags);
	while (!FUNC3(&dev->cqp_cmd_head) && !FUNC2(dev->cqp)) {
		pcmdinfo = (struct cqp_commands_info *)FUNC1(&dev->cqp_cmd_head);

		status = FUNC0(dev, pcmdinfo);
		if (status)
			break;
	}
	FUNC5(&dev->cqp_lock, flags);
	return status;
}