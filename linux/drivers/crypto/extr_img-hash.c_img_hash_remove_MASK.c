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
struct platform_device {int dummy; } ;
struct img_hash_dev {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  hash_clk; int /*<<< orphan*/  dma_lch; int /*<<< orphan*/  dma_task; int /*<<< orphan*/  done_task; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ img_hash ; 
 int /*<<< orphan*/  FUNC2 (struct img_hash_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct img_hash_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct img_hash_dev *hdev;

	hdev = FUNC4(pdev);
	FUNC5(&img_hash.lock);
	FUNC3(&hdev->list);
	FUNC6(&img_hash.lock);

	FUNC2(hdev);

	FUNC7(&hdev->done_task);
	FUNC7(&hdev->dma_task);

	FUNC1(hdev->dma_lch);

	FUNC0(hdev->hash_clk);
	FUNC0(hdev->sys_clk);

	return 0;
}