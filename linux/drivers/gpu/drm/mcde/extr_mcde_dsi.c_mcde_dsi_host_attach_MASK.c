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
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  format; } ;
struct mcde_dsi {TYPE_1__* mcde; struct mipi_dsi_device* mdsi; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct mipi_dsi_device* mdsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct mcde_dsi* FUNC2 (struct mipi_dsi_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_host *host,
				struct mipi_dsi_device *mdsi)
{
	struct mcde_dsi *d = FUNC2(host);

	if (mdsi->lanes < 1 || mdsi->lanes > 2) {
		FUNC0("dsi device params invalid, 1 or 2 lanes supported\n");
		return -EINVAL;
	}

	FUNC1(d->dev, "attached DSI device with %d lanes\n", mdsi->lanes);
	/* MIPI_DSI_FMT_RGB88 etc */
	FUNC1(d->dev, "format %08x, %dbpp\n", mdsi->format,
		 FUNC3(mdsi->format));
	FUNC1(d->dev, "mode flags: %08lx\n", mdsi->mode_flags);

	d->mdsi = mdsi;
	if (d->mcde)
		d->mcde->mdsi = mdsi;

	return 0;
}