#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nouveau_encoder {TYPE_2__* dcb; } ;
struct TYPE_6__ {scalar_t__ fp_no_ddc; } ;
struct nouveau_drm {TYPE_3__ vbios; } ;
struct nouveau_connector {int /*<<< orphan*/ * edid; } ;
struct edid {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {scalar_t__ use_straps_for_mode; scalar_t__ use_acpi_for_edid; } ;
struct TYPE_5__ {TYPE_1__ lvdsconf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_OUTPUT_LVDS ; 
 int /*<<< orphan*/  EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct nouveau_encoder* FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct edid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct drm_device*,struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*,int /*<<< orphan*/ *) ; 
 struct nouveau_connector* FUNC8 (struct drm_connector*) ; 
 int FUNC9 (struct drm_connector*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*,struct nouveau_encoder*) ; 
 struct nouveau_drm* FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_ignorelid ; 

__attribute__((used)) static enum drm_connector_status
FUNC12(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct nouveau_drm *drm = FUNC11(dev);
	struct nouveau_connector *nv_connector = FUNC8(connector);
	struct nouveau_encoder *nv_encoder = NULL;
	enum drm_connector_status status = connector_status_disconnected;

	/* Cleanup the previous EDID block. */
	if (nv_connector->edid) {
		FUNC1(connector, NULL);
		FUNC3(nv_connector->edid);
		nv_connector->edid = NULL;
	}

	nv_encoder = FUNC2(connector, DCB_OUTPUT_LVDS);
	if (!nv_encoder)
		return connector_status_disconnected;

	/* Try retrieving EDID via DDC */
	if (!drm->vbios.fp_no_ddc) {
		status = FUNC9(connector, force);
		if (status == connector_status_connected)
			goto out;
	}

	/* On some laptops (Sony, i'm looking at you) there appears to
	 * be no direct way of accessing the panel's EDID.  The only
	 * option available to us appears to be to ask ACPI for help..
	 *
	 * It's important this check's before trying straps, one of the
	 * said manufacturer's laptops are configured in such a way
	 * the nouveau decides an entry in the VBIOS FP mode table is
	 * valid - it's not (rh#613284)
	 */
	if (nv_encoder->dcb->lvdsconf.use_acpi_for_edid) {
		if ((nv_connector->edid = FUNC5(dev, connector))) {
			status = connector_status_connected;
			goto out;
		}
	}

	/* If no EDID found above, and the VBIOS indicates a hardcoded
	 * modeline is avalilable for the panel, set it as the panel's
	 * native mode and exit.
	 */
	if (FUNC7(dev, NULL) && (drm->vbios.fp_no_ddc ||
	    nv_encoder->dcb->lvdsconf.use_straps_for_mode)) {
		status = connector_status_connected;
		goto out;
	}

	/* Still nothing, some VBIOS images have a hardcoded EDID block
	 * stored for the panel stored in them.
	 */
	if (!drm->vbios.fp_no_ddc) {
		struct edid *edid =
			(struct edid *)FUNC6(dev);
		if (edid) {
			nv_connector->edid =
					FUNC4(edid, EDID_LENGTH, GFP_KERNEL);
			if (nv_connector->edid)
				status = connector_status_connected;
		}
	}

out:
#if defined(CONFIG_ACPI_BUTTON) || \
	(defined(CONFIG_ACPI_BUTTON_MODULE) && defined(MODULE))
	if (status == connector_status_connected &&
	    !nouveau_ignorelid && !acpi_lid_open())
		status = connector_status_unknown;
#endif

	FUNC1(connector, nv_connector->edid);
	FUNC10(connector, nv_encoder);
	return status;
}