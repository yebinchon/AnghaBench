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
struct dsi_data {int /*<<< orphan*/  bus_lock; } ;

/* Variables and functions */
 struct dsi_data* FUNC0 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct omap_dss_device *dssdev)
{
	struct dsi_data *dsi = FUNC0(dssdev);

	FUNC1(&dsi->bus_lock);
}