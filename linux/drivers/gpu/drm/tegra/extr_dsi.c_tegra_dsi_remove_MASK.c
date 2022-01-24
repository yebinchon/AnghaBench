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
struct tegra_dsi {int /*<<< orphan*/  mipi; int /*<<< orphan*/  host; int /*<<< orphan*/  output; int /*<<< orphan*/  client; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tegra_dsi* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct tegra_dsi *dsi = FUNC3(pdev);
	int err;

	FUNC4(&pdev->dev);

	err = FUNC1(&dsi->client);
	if (err < 0) {
		FUNC0(&pdev->dev, "failed to unregister host1x client: %d\n",
			err);
		return err;
	}

	FUNC6(&dsi->output);

	FUNC2(&dsi->host);
	FUNC5(dsi->mipi);

	return 0;
}