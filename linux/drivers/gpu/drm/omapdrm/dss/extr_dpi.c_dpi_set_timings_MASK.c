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
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct dpi_data {int pixelclock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dpi_data* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct omap_dss_device *dssdev,
			    const struct drm_display_mode *mode)
{
	struct dpi_data *dpi = FUNC1(dssdev);

	FUNC0("dpi_set_timings\n");

	FUNC2(&dpi->lock);

	dpi->pixelclock = mode->clock * 1000;

	FUNC3(&dpi->lock);
}