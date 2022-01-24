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
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;
struct cdns_dsi_output {int /*<<< orphan*/  bridge; } ;
struct cdns_dsi_input {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct cdns_dsi {TYPE_1__ base; struct cdns_dsi_output output; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_ATOMIC ; 
 int ENOTSUPP ; 
 struct cdns_dsi_input* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdns_dsi* FUNC4 (struct cdns_dsi_input*) ; 

__attribute__((used)) static int FUNC5(struct drm_bridge *bridge)
{
	struct cdns_dsi_input *input = FUNC0(bridge);
	struct cdns_dsi *dsi = FUNC4(input);
	struct cdns_dsi_output *output = &dsi->output;

	if (!FUNC3(bridge->dev, DRIVER_ATOMIC)) {
		FUNC1(dsi->base.dev,
			"cdns-dsi driver is only compatible with DRM devices supporting atomic updates");
		return -ENOTSUPP;
	}

	return FUNC2(bridge->encoder, output->bridge, bridge);
}