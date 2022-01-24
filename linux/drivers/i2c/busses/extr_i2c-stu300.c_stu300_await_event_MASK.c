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
struct stu300_dev {int cmd_err; int cmd_event; TYPE_1__* pdev; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  cmd_issue_lock; } ;
typedef  enum stu300_event { ____Placeholder_stu300_event } stu300_event ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int STU300_ERROR_NONE ; 
 int STU300_EVENT_6 ; 
 int /*<<< orphan*/  STU300_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stu300_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct stu300_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct stu300_dev *dev,
				enum stu300_event mr_event)
{
	int ret;

	/* Is it already here? */
	FUNC2(&dev->cmd_issue_lock);
	dev->cmd_err = STU300_ERROR_NONE;
	dev->cmd_event = mr_event;

	FUNC1(&dev->cmd_complete);

	/* Turn on the I2C interrupt for current operation */
	FUNC5(dev);

	/* Unlock the command block and wait for the event to occur */
	FUNC3(&dev->cmd_issue_lock);

	ret = FUNC6(&dev->cmd_complete,
							STU300_TIMEOUT);
	if (ret < 0) {
		FUNC0(&dev->pdev->dev,
		       "wait_for_completion_interruptible_timeout()"
		       "returned %d waiting for event %04x\n", ret, mr_event);
		return ret;
	}

	if (ret == 0) {
		if (mr_event != STU300_EVENT_6) {
			FUNC0(&dev->pdev->dev, "controller "
				"timed out waiting for event %d, reinit "
				"hardware\n", mr_event);
			(void) FUNC4(dev);
		}
		return -ETIMEDOUT;
	}

	if (dev->cmd_err != STU300_ERROR_NONE) {
		if (mr_event != STU300_EVENT_6) {
			FUNC0(&dev->pdev->dev, "controller "
				"error (await_event) %d waiting for event %d, "
			       "reinit hardware\n", dev->cmd_err, mr_event);
			(void) FUNC4(dev);
		}
		return -EIO;
	}

	return 0;
}