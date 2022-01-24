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
struct tegra_hdmi {int /*<<< orphan*/  output; int /*<<< orphan*/  client; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct tegra_hdmi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct tegra_hdmi *hdmi = FUNC2(pdev);
	int err;

	FUNC3(&pdev->dev);

	err = FUNC1(&hdmi->client);
	if (err < 0) {
		FUNC0(&pdev->dev, "failed to unregister host1x client: %d\n",
			err);
		return err;
	}

	FUNC4(&hdmi->output);

	return 0;
}