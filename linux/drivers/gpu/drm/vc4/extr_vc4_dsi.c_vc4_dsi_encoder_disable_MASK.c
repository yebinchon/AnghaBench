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
struct vc4_dsi_encoder {struct vc4_dsi* dsi; } ;
struct vc4_dsi {int /*<<< orphan*/  pixel_clock; int /*<<< orphan*/  escape_clock; int /*<<< orphan*/  pll_phy_clock; int /*<<< orphan*/  bridge; TYPE_1__* pdev; } ;
struct drm_encoder {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct vc4_dsi_encoder* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc4_dsi*,int) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder)
{
	struct vc4_dsi_encoder *vc4_encoder = FUNC4(encoder);
	struct vc4_dsi *dsi = vc4_encoder->dsi;
	struct device *dev = &dsi->pdev->dev;

	FUNC1(dsi->bridge);
	FUNC5(dsi, true);
	FUNC2(dsi->bridge);

	FUNC0(dsi->pll_phy_clock);
	FUNC0(dsi->escape_clock);
	FUNC0(dsi->pixel_clock);

	FUNC3(dev);
}