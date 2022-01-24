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
struct tegra_hdmi {int /*<<< orphan*/  hdmi; int /*<<< orphan*/  pll; int /*<<< orphan*/  vdd; int /*<<< orphan*/  output; } ;
struct host1x_client {int dummy; } ;

/* Variables and functions */
 struct tegra_hdmi* FUNC0 (struct host1x_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct host1x_client *client)
{
	struct tegra_hdmi *hdmi = FUNC0(client);

	FUNC2(&hdmi->output);

	FUNC1(hdmi->vdd);
	FUNC1(hdmi->pll);
	FUNC1(hdmi->hdmi);

	return 0;
}