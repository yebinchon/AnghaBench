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
struct tegra_sor {int /*<<< orphan*/  avdd_io_supply; int /*<<< orphan*/  vdd_pll_supply; int /*<<< orphan*/  hdmi_supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct tegra_sor *sor)
{
	FUNC0(sor->hdmi_supply);
	FUNC0(sor->vdd_pll_supply);
	FUNC0(sor->avdd_io_supply);

	return 0;
}