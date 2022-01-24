#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mipi_dbi {scalar_t__ reset; } ;
struct TYPE_2__ {struct device* dev; } ;
struct mipi_dbi_dev {scalar_t__ regulator; struct mipi_dbi dbi; TYPE_1__ drm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  MIPI_DCS_SOFT_RESET ; 
 int FUNC1 (struct mipi_dbi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mipi_dbi*) ; 
 int /*<<< orphan*/  FUNC3 (struct mipi_dbi*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct mipi_dbi_dev *dbidev, bool cond)
{
	struct device *dev = dbidev->drm.dev;
	struct mipi_dbi *dbi = &dbidev->dbi;
	int ret;

	if (dbidev->regulator) {
		ret = FUNC6(dbidev->regulator);
		if (ret) {
			FUNC0(dev, "Failed to enable regulator (%d)\n", ret);
			return ret;
		}
	}

	if (cond && FUNC2(dbi))
		return 1;

	FUNC3(dbi);
	ret = FUNC1(dbi, MIPI_DCS_SOFT_RESET);
	if (ret) {
		FUNC0(dev, "Failed to send reset command (%d)\n", ret);
		if (dbidev->regulator)
			FUNC5(dbidev->regulator);
		return ret;
	}

	/*
	 * If we did a hw reset, we know the controller is in Sleep mode and
	 * per MIPI DSC spec should wait 5ms after soft reset. If we didn't,
	 * we assume worst case and wait 120ms.
	 */
	if (dbi->reset)
		FUNC7(5000, 20000);
	else
		FUNC4(120);

	return 0;
}