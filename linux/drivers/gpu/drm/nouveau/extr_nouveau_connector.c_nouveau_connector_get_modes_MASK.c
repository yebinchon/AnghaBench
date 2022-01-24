#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nouveau_encoder {TYPE_3__* dcb; } ;
struct TYPE_6__ {scalar_t__ fp_no_ddc; } ;
struct nouveau_drm {TYPE_2__ vbios; } ;
struct nouveau_connector {scalar_t__ type; struct drm_display_mode* native_mode; scalar_t__ edid; struct nouveau_encoder* detected_encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {scalar_t__ connector_type; struct drm_device* dev; } ;
struct TYPE_8__ {int (* get_modes ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct TYPE_5__ {scalar_t__ use_straps_for_mode; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ lvdsconf; } ;

/* Variables and functions */
 scalar_t__ DCB_CONNECTOR_LVDS ; 
 scalar_t__ DCB_CONNECTOR_LVDS_SPWG ; 
 scalar_t__ DCB_CONNECTOR_eDP ; 
 scalar_t__ DCB_OUTPUT_LVDS ; 
 scalar_t__ DCB_OUTPUT_TV ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 int FUNC0 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_display_mode*) ; 
 void* FUNC2 (struct drm_device*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 TYPE_4__* FUNC4 (struct drm_encoder*) ; 
 scalar_t__ FUNC5 (struct drm_device*,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC6 (struct drm_connector*) ; 
 struct nouveau_connector* FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 scalar_t__ FUNC9 (struct drm_connector*) ; 
 struct nouveau_drm* FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct drm_encoder*,struct drm_connector*) ; 
 struct drm_encoder* FUNC12 (struct nouveau_encoder*) ; 

__attribute__((used)) static int
FUNC13(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct nouveau_drm *drm = FUNC10(dev);
	struct nouveau_connector *nv_connector = FUNC7(connector);
	struct nouveau_encoder *nv_encoder = nv_connector->detected_encoder;
	struct drm_encoder *encoder = FUNC12(nv_encoder);
	int ret = 0;

	/* destroy the native mode, the attached monitor could have changed.
	 */
	if (nv_connector->native_mode) {
		FUNC1(dev, nv_connector->native_mode);
		nv_connector->native_mode = NULL;
	}

	if (nv_connector->edid)
		ret = FUNC0(connector, nv_connector->edid);
	else
	if (nv_encoder->dcb->type == DCB_OUTPUT_LVDS &&
	    (nv_encoder->dcb->lvdsconf.use_straps_for_mode ||
	     drm->vbios.fp_no_ddc) && FUNC5(dev, NULL)) {
		struct drm_display_mode mode;

		FUNC5(dev, &mode);
		nv_connector->native_mode = FUNC2(dev, &mode);
	}

	/* Determine display colour depth for everything except LVDS now,
	 * DP requires this before mode_valid() is called.
	 */
	if (connector->connector_type != DRM_MODE_CONNECTOR_LVDS)
		FUNC8(connector);

	/* Find the native mode if this is a digital panel, if we didn't
	 * find any modes through DDC previously add the native mode to
	 * the list of modes.
	 */
	if (!nv_connector->native_mode)
		nv_connector->native_mode = FUNC6(connector);
	if (ret == 0 && nv_connector->native_mode) {
		struct drm_display_mode *mode;

		mode = FUNC2(dev, nv_connector->native_mode);
		FUNC3(connector, mode);
		ret = 1;
	}

	/* Determine LVDS colour depth, must happen after determining
	 * "native" mode as some VBIOS tables require us to use the
	 * pixel clock as part of the lookup...
	 */
	if (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
		FUNC8(connector);

	if (nv_encoder->dcb->type == DCB_OUTPUT_TV)
		ret = FUNC4(encoder)->get_modes(encoder, connector);

	if (nv_connector->type == DCB_CONNECTOR_LVDS ||
	    nv_connector->type == DCB_CONNECTOR_LVDS_SPWG ||
	    nv_connector->type == DCB_CONNECTOR_eDP)
		ret += FUNC9(connector);

	return ret;
}