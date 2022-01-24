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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC1 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC2(struct omap_dss_device *dssdev)
{
	struct dsi_data *dsi = FUNC1(dssdev);

	FUNC0(&dsi->bus_lock);
}