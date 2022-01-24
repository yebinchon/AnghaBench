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
struct omap_encoder {struct omap_dss_device* output; } ;
struct omap_dss_device {scalar_t__ type; int /*<<< orphan*/  next; int /*<<< orphan*/  state; TYPE_1__* ops; scalar_t__ panel; int /*<<< orphan*/  name; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 scalar_t__ OMAP_DISPLAY_TYPE_DSI ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 struct omap_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct omap_encoder *omap_encoder = FUNC6(encoder);
	struct omap_dss_device *dssdev = omap_encoder->output;
	struct drm_device *dev = encoder->dev;

	FUNC0(dev->dev, "disable(%s)\n", dssdev->name);

	/* Disable the panel if present. */
	if (dssdev->panel) {
		FUNC1(dssdev->panel);
		FUNC2(dssdev->panel);
	}

	/*
	 * Disable the chain of external devices, starting at the one at the
	 * internal encoder's output.
	 */
	FUNC3(dssdev->next);

	/*
	 * Disable the internal encoder. This will disable the DSS output. The
	 * DSI is treated as an exception as DSI pipelines still use the legacy
	 * flow where the pipeline output controls the encoder.
	 */
	if (dssdev->type != OMAP_DISPLAY_TYPE_DSI) {
		dssdev->ops->disable(dssdev);
		dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
	}

	/*
	 * Perform the post-disable operations on the chain of external devices
	 * to complete the display pipeline disable.
	 */
	FUNC4(dssdev->next);
}