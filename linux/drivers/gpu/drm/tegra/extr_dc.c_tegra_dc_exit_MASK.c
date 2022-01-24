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
struct tegra_dc {int /*<<< orphan*/  syncpt; int /*<<< orphan*/  group; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct host1x_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x_client*,int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC3 (struct host1x_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dc*) ; 
 int FUNC6 (struct tegra_dc*) ; 

__attribute__((used)) static int FUNC7(struct host1x_client *client)
{
	struct tegra_dc *dc = FUNC3(client);
	int err;

	if (!FUNC5(dc))
		return 0;

	FUNC1(dc->dev, dc->irq, dc);

	err = FUNC6(dc);
	if (err) {
		FUNC0(dc->dev, "failed to shutdown RGB output: %d\n", err);
		return err;
	}

	FUNC2(client, dc->group);
	FUNC4(dc->syncpt);

	return 0;
}