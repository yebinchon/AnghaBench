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
struct tegra_dsi {int /*<<< orphan*/  output; } ;
struct host1x_client {int dummy; } ;

/* Variables and functions */
 struct tegra_dsi* FUNC0 (struct host1x_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct host1x_client *client)
{
	struct tegra_dsi *dsi = FUNC0(client);

	FUNC1(&dsi->output);

	return 0;
}