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
struct TYPE_3__ {int /*<<< orphan*/  pool; scalar_t__ flags; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  hcr_mutex; } ;
struct mthca_dev {int /*<<< orphan*/  hcr; TYPE_1__ cmd; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MTHCA_HCR_BASE ; 
 int /*<<< orphan*/  MTHCA_HCR_SIZE ; 
 int /*<<< orphan*/  MTHCA_MAILBOX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(struct mthca_dev *dev)
{
	FUNC4(&dev->cmd.hcr_mutex);
	FUNC6(&dev->cmd.poll_sem, 1);
	dev->cmd.flags = 0;

	dev->hcr = FUNC1(FUNC5(dev->pdev, 0) + MTHCA_HCR_BASE,
			   MTHCA_HCR_SIZE);
	if (!dev->hcr) {
		FUNC3(dev, "Couldn't map command register.");
		return -ENOMEM;
	}

	dev->cmd.pool = FUNC0("mthca_cmd", &dev->pdev->dev,
					MTHCA_MAILBOX_SIZE,
					MTHCA_MAILBOX_SIZE, 0);
	if (!dev->cmd.pool) {
		FUNC2(dev->hcr);
		return -ENOMEM;
	}

	return 0;
}