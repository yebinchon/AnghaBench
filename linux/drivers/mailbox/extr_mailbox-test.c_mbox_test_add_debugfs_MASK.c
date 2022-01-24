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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mbox_test_device {int /*<<< orphan*/  root_debugfs_dir; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct mbox_test_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbox_test_message_ops ; 
 int /*<<< orphan*/  mbox_test_signal_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				 struct mbox_test_device *tdev)
{
	if (!FUNC2())
		return 0;

	tdev->root_debugfs_dir = FUNC0(FUNC4(&pdev->dev), NULL);
	if (!tdev->root_debugfs_dir) {
		FUNC3(&pdev->dev, "Failed to create Mailbox debugfs\n");
		return -EINVAL;
	}

	FUNC1("message", 0600, tdev->root_debugfs_dir,
			    tdev, &mbox_test_message_ops);

	FUNC1("signal", 0200, tdev->root_debugfs_dir,
			    tdev, &mbox_test_signal_ops);

	return 0;
}