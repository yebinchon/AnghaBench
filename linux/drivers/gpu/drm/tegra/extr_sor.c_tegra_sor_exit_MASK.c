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
struct tegra_sor {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_dp; int /*<<< orphan*/  clk_safe; int /*<<< orphan*/  dev; scalar_t__ aux; int /*<<< orphan*/  output; } ;
struct host1x_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOR_INT_ENABLE ; 
 int /*<<< orphan*/  SOR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 struct tegra_sor* FUNC3 (struct host1x_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_sor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct host1x_client *client)
{
	struct tegra_sor *sor = FUNC3(client);
	int err;

	FUNC5(sor, 0, SOR_INT_MASK);
	FUNC5(sor, 0, SOR_INT_ENABLE);

	FUNC4(&sor->output);

	if (sor->aux) {
		err = FUNC2(sor->aux);
		if (err < 0) {
			FUNC1(sor->dev, "failed to detach DP: %d\n", err);
			return err;
		}
	}

	FUNC0(sor->clk_safe);
	FUNC0(sor->clk_dp);
	FUNC0(sor->clk);

	return 0;
}