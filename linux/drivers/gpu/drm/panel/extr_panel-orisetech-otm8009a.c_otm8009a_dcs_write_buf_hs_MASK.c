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
struct otm8009a {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int /*<<< orphan*/  mode_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_MODE_LPM ; 
 int /*<<< orphan*/  FUNC0 (struct otm8009a*,void const*,size_t) ; 
 struct mipi_dsi_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct otm8009a *ctx, const void *data,
				      size_t len)
{
	struct mipi_dsi_device *dsi = FUNC1(ctx->dev);

	/* data will be sent in dsi hs mode (ie. no lpm) */
	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

	FUNC0(ctx, data, len);

	/* restore back the dsi lpm mode */
	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
}