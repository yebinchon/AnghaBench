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
struct osd101t2587_panel {int /*<<< orphan*/  base; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 struct osd101t2587_panel* FUNC0 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mipi_dsi_device *dsi)
{
	struct osd101t2587_panel *osd101t2587 = FUNC0(dsi);

	FUNC1(&osd101t2587->base);
	FUNC2(&osd101t2587->base);
}