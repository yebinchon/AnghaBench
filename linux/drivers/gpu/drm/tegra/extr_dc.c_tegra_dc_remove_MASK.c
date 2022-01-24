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
struct tegra_dc {int /*<<< orphan*/  client; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct tegra_dc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tegra_dc*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct tegra_dc *dc = FUNC2(pdev);
	int err;

	err = FUNC1(&dc->client);
	if (err < 0) {
		FUNC0(&pdev->dev, "failed to unregister host1x client: %d\n",
			err);
		return err;
	}

	err = FUNC4(dc);
	if (err < 0) {
		FUNC0(&pdev->dev, "failed to remove RGB output: %d\n", err);
		return err;
	}

	FUNC3(&pdev->dev);

	return 0;
}