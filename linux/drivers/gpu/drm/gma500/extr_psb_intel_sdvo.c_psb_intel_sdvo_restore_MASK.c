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
struct psb_intel_sdvo {int /*<<< orphan*/  saveSDVO; int /*<<< orphan*/  sdvo_reg; } ;
struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  mode; } ;
struct drm_connector {scalar_t__ status; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_encoder base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ connector_status_connected ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct drm_connector*) ; 
 struct psb_intel_sdvo* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_encoder *encoder = &FUNC2(connector)->base;
	struct psb_intel_sdvo *sdvo = FUNC3(encoder);
	struct drm_crtc *crtc = encoder->crtc;

	FUNC0(sdvo->sdvo_reg, sdvo->saveSDVO);

	/* Force a full mode set on the crtc. We're supposed to have the
	   mode_config lock already. */
	if (connector->status == connector_status_connected)
		FUNC1(crtc, &crtc->mode, crtc->x, crtc->y,
					 NULL);
}