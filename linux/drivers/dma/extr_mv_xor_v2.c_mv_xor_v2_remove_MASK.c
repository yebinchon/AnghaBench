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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mv_xor_v2_device {int desc_size; int /*<<< orphan*/  clk; int /*<<< orphan*/  irq_tasklet; TYPE_1__* msi_desc; int /*<<< orphan*/  hw_desq; int /*<<< orphan*/  hw_desq_virt; int /*<<< orphan*/  dmadev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int MV_XOR_V2_DESC_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv_xor_v2_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mv_xor_v2_device *xor_dev = FUNC4(pdev);

	FUNC2(&xor_dev->dmadev);

	FUNC3(&pdev->dev,
			  xor_dev->desc_size * MV_XOR_V2_DESC_NUM,
			  xor_dev->hw_desq_virt, xor_dev->hw_desq);

	FUNC1(&pdev->dev, xor_dev->msi_desc->irq, xor_dev);

	FUNC5(&pdev->dev);

	FUNC6(&xor_dev->irq_tasklet);

	FUNC0(xor_dev->clk);

	return 0;
}