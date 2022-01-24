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
struct mipi_dsi_device {int dummy; } ;
struct jh057n {int /*<<< orphan*/  backlight; int /*<<< orphan*/  dev; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 struct jh057n* FUNC2 (struct drm_panel*) ; 
 struct mipi_dsi_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct jh057n *ctx = FUNC2(panel);
	struct mipi_dsi_device *dsi = FUNC3(ctx->dev);

	FUNC0(ctx->backlight);
	return FUNC1(dsi);
}