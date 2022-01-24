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
struct TYPE_2__ {scalar_t__ dev; } ;
struct mtk_dsi {TYPE_1__ conn; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  lanes; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  lanes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct mtk_dsi* FUNC1 (struct mipi_dsi_host*) ; 

__attribute__((used)) static int FUNC2(struct mipi_dsi_host *host,
			       struct mipi_dsi_device *device)
{
	struct mtk_dsi *dsi = FUNC1(host);

	dsi->lanes = device->lanes;
	dsi->format = device->format;
	dsi->mode_flags = device->mode_flags;

	if (dsi->conn.dev)
		FUNC0(dsi->conn.dev);

	return 0;
}