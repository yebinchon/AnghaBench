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
struct dw_mipi_dsi {int /*<<< orphan*/  dev; int /*<<< orphan*/  dsi_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_mipi_dsi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dw_mipi_dsi *dsi)
{
	FUNC1(&dsi->dsi_host);

	FUNC2(dsi->dev);
	FUNC0(dsi);
}