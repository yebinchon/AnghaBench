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
struct resource {int dummy; } ;
struct panfrost_device {int /*<<< orphan*/  iomem; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  as_lock; int /*<<< orphan*/  as_lru_list; int /*<<< orphan*/  scheduled_jobs; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  sched_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct panfrost_device*) ; 
 int FUNC7 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct panfrost_device*) ; 
 int FUNC9 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct panfrost_device*) ; 
 int FUNC11 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct panfrost_device*) ; 
 int FUNC13 (struct panfrost_device*) ; 
 int FUNC14 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct panfrost_device*) ; 
 int FUNC16 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct panfrost_device*) ; 
 int FUNC18 (struct panfrost_device*) ; 
 struct resource* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct panfrost_device *pfdev)
{
	int err;
	struct resource *res;

	FUNC5(&pfdev->sched_lock);
	FUNC5(&pfdev->reset_lock);
	FUNC0(&pfdev->scheduled_jobs);
	FUNC0(&pfdev->as_lru_list);

	FUNC20(&pfdev->as_lock);

	err = FUNC7(pfdev);
	if (err) {
		FUNC3(pfdev->dev, "clk init failed %d\n", err);
		return err;
	}

	err = FUNC16(pfdev);
	if (err) {
		FUNC3(pfdev->dev, "regulator init failed %d\n", err);
		goto err_out0;
	}

	err = FUNC18(pfdev);
	if (err) {
		FUNC3(pfdev->dev, "reset init failed %d\n", err);
		goto err_out1;
	}

	res = FUNC19(pfdev->pdev, IORESOURCE_MEM, 0);
	pfdev->iomem = FUNC4(pfdev->dev, res);
	if (FUNC1(pfdev->iomem)) {
		FUNC3(pfdev->dev, "failed to ioremap iomem\n");
		err = FUNC2(pfdev->iomem);
		goto err_out2;
	}

	err = FUNC9(pfdev);
	if (err)
		goto err_out2;

	err = FUNC13(pfdev);
	if (err)
		goto err_out3;

	err = FUNC11(pfdev);
	if (err)
		goto err_out4;

	err = FUNC14(pfdev);
	if (err)
		goto err_out5;

	return 0;
err_out5:
	FUNC10(pfdev);
err_out4:
	FUNC12(pfdev);
err_out3:
	FUNC8(pfdev);
err_out2:
	FUNC17(pfdev);
err_out1:
	FUNC15(pfdev);
err_out0:
	FUNC6(pfdev);
	return err;
}