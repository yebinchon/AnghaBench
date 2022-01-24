#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int link_nr; unsigned int link_bw; } ;
struct nouveau_encoder {TYPE_4__ dp; TYPE_3__* dcb; } ;
struct nouveau_connector {TYPE_1__* native_mode; struct nouveau_encoder* detected_encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {unsigned int clock; int flags; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_11__ {int bpc; } ;
struct drm_connector {TYPE_5__ display_info; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_12__ {int (* mode_valid ) (struct drm_encoder*,struct drm_display_mode*) ;} ;
struct TYPE_8__ {unsigned int maxfreq; } ;
struct TYPE_9__ {int type; TYPE_2__ crtconf; } ;
struct TYPE_7__ {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DCB_OUTPUT_ANALOG 132 
#define  DCB_OUTPUT_DP 131 
#define  DCB_OUTPUT_LVDS 130 
#define  DCB_OUTPUT_TMDS 129 
#define  DCB_OUTPUT_TV 128 
 int DRM_MODE_FLAG_3D_FRAME_PACKING ; 
 int DRM_MODE_FLAG_3D_MASK ; 
 int MODE_BAD ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int MODE_OK ; 
 int MODE_PANEL ; 
 TYPE_6__* FUNC1 (struct drm_encoder*) ; 
 unsigned int FUNC2 (struct drm_connector*) ; 
 struct nouveau_connector* FUNC3 (struct drm_connector*) ; 
 int FUNC4 (struct drm_encoder*,struct drm_display_mode*) ; 
 struct drm_encoder* FUNC5 (struct nouveau_encoder*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC6(struct drm_connector *connector,
			     struct drm_display_mode *mode)
{
	struct nouveau_connector *nv_connector = FUNC3(connector);
	struct nouveau_encoder *nv_encoder = nv_connector->detected_encoder;
	struct drm_encoder *encoder = FUNC5(nv_encoder);
	unsigned min_clock = 25000, max_clock = min_clock;
	unsigned clock = mode->clock;

	switch (nv_encoder->dcb->type) {
	case DCB_OUTPUT_LVDS:
		if (nv_connector->native_mode &&
		    (mode->hdisplay > nv_connector->native_mode->hdisplay ||
		     mode->vdisplay > nv_connector->native_mode->vdisplay))
			return MODE_PANEL;

		min_clock = 0;
		max_clock = 400000;
		break;
	case DCB_OUTPUT_TMDS:
		max_clock = FUNC2(connector);
		break;
	case DCB_OUTPUT_ANALOG:
		max_clock = nv_encoder->dcb->crtconf.maxfreq;
		if (!max_clock)
			max_clock = 350000;
		break;
	case DCB_OUTPUT_TV:
		return FUNC1(encoder)->mode_valid(encoder, mode);
	case DCB_OUTPUT_DP:
		max_clock  = nv_encoder->dp.link_nr;
		max_clock *= nv_encoder->dp.link_bw;
		clock = clock * (connector->display_info.bpc * 3) / 10;
		break;
	default:
		FUNC0();
		return MODE_BAD;
	}

	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
		clock *= 2;

	if (clock < min_clock)
		return MODE_CLOCK_LOW;

	if (clock > max_clock)
		return MODE_CLOCK_HIGH;

	return MODE_OK;
}