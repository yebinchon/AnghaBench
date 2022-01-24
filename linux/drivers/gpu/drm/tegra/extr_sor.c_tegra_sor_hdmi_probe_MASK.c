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
struct tegra_sor {int /*<<< orphan*/  scdc; int /*<<< orphan*/  dev; void* hdmi_supply; void* vdd_pll_supply; void* avdd_io_supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  tegra_sor_hdmi_scdc_work ; 

__attribute__((used)) static int FUNC6(struct tegra_sor *sor)
{
	int err;

	sor->avdd_io_supply = FUNC4(sor->dev, "avdd-io");
	if (FUNC1(sor->avdd_io_supply)) {
		FUNC3(sor->dev, "cannot get AVDD I/O supply: %ld\n",
			FUNC2(sor->avdd_io_supply));
		return FUNC2(sor->avdd_io_supply);
	}

	err = FUNC5(sor->avdd_io_supply);
	if (err < 0) {
		FUNC3(sor->dev, "failed to enable AVDD I/O supply: %d\n",
			err);
		return err;
	}

	sor->vdd_pll_supply = FUNC4(sor->dev, "vdd-pll");
	if (FUNC1(sor->vdd_pll_supply)) {
		FUNC3(sor->dev, "cannot get VDD PLL supply: %ld\n",
			FUNC2(sor->vdd_pll_supply));
		return FUNC2(sor->vdd_pll_supply);
	}

	err = FUNC5(sor->vdd_pll_supply);
	if (err < 0) {
		FUNC3(sor->dev, "failed to enable VDD PLL supply: %d\n",
			err);
		return err;
	}

	sor->hdmi_supply = FUNC4(sor->dev, "hdmi");
	if (FUNC1(sor->hdmi_supply)) {
		FUNC3(sor->dev, "cannot get HDMI supply: %ld\n",
			FUNC2(sor->hdmi_supply));
		return FUNC2(sor->hdmi_supply);
	}

	err = FUNC5(sor->hdmi_supply);
	if (err < 0) {
		FUNC3(sor->dev, "failed to enable HDMI supply: %d\n", err);
		return err;
	}

	FUNC0(&sor->scdc, tegra_sor_hdmi_scdc_work);

	return 0;
}