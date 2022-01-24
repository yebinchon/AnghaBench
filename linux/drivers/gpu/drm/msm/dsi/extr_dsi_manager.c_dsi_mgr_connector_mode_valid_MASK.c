#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msm_kms {TYPE_1__* funcs; } ;
struct msm_dsi {int dummy; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {TYPE_2__* dev; } ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;
struct TYPE_3__ {long (* round_pixclk ) (struct msm_kms*,long,struct drm_encoder*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MODE_CLOCK_RANGE ; 
 int MODE_OK ; 
 int FUNC1 (struct drm_connector*) ; 
 struct msm_dsi* FUNC2 (int) ; 
 struct drm_encoder* FUNC3 (struct msm_dsi*) ; 
 long FUNC4 (struct msm_kms*,long,struct drm_encoder*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector,
				struct drm_display_mode *mode)
{
	int id = FUNC1(connector);
	struct msm_dsi *msm_dsi = FUNC2(id);
	struct drm_encoder *encoder = FUNC3(msm_dsi);
	struct msm_drm_private *priv = connector->dev->dev_private;
	struct msm_kms *kms = priv->kms;
	long actual, requested;

	FUNC0("");
	requested = 1000 * mode->clock;
	actual = kms->funcs->round_pixclk(kms, requested, encoder);

	FUNC0("requested=%ld, actual=%ld", requested, actual);
	if (actual != requested)
		return MODE_CLOCK_RANGE;

	return MODE_OK;
}