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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mtk_uart_apdmadev {int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_uart_apdmadev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mtk_uart_apdmadev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mtk_uart_apdmadev *mtkd = FUNC3(pdev);

	FUNC2(pdev->dev.of_node);

	FUNC1(mtkd);

	FUNC0(&mtkd->ddev);

	FUNC4(&pdev->dev);

	return 0;
}