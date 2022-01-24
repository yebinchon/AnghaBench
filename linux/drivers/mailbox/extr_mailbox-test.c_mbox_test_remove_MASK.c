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
struct platform_device {int dummy; } ;
struct mbox_test_device {scalar_t__ rx_channel; scalar_t__ tx_channel; int /*<<< orphan*/  root_debugfs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mbox_test_device* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct mbox_test_device *tdev = FUNC2(pdev);

	FUNC0(tdev->root_debugfs_dir);

	if (tdev->tx_channel)
		FUNC1(tdev->tx_channel);
	if (tdev->rx_channel)
		FUNC1(tdev->rx_channel);

	return 0;
}