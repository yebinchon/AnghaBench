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

/* Variables and functions */
 int /*<<< orphan*/  abx500_temp_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct platform_device*) ; 
 int FUNC2 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret;
	int irq = FUNC2(pdev, "ABX500_TEMP_WARM");

	if (irq < 0) {
		FUNC0(&pdev->dev, "Get irq by name failed\n");
		return irq;
	}

	ret = FUNC1(&pdev->dev, irq, NULL,
		abx500_temp_irq_handler, 0, "abx500-temp", pdev);
	if (ret < 0)
		FUNC0(&pdev->dev, "Request threaded irq failed (%d)\n", ret);

	return ret;
}