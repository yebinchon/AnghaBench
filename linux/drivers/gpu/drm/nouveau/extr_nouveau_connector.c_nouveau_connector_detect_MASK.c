#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nouveau_encoder {TYPE_1__* dcb; struct i2c_adapter* i2c; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_connector {scalar_t__ type; TYPE_2__* edid; int /*<<< orphan*/  aux; } ;
struct i2c_adapter {int dummy; } ;
struct drm_encoder_helper_funcs {scalar_t__ (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_connector {int /*<<< orphan*/  name; struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_8__ {int input; } ;
struct TYPE_7__ {int type; } ;

/* Variables and functions */
 scalar_t__ DCB_CONNECTOR_LVDS ; 
 int DCB_OUTPUT_ANALOG ; 
 int DCB_OUTPUT_TMDS ; 
 int DCB_OUTPUT_TV ; 
 int DRM_EDID_INPUT_DIGITAL ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ) ; 
 int VGA_SWITCHEROO_CAN_SWITCH_DDC ; 
 scalar_t__ connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (struct drm_connector*,struct i2c_adapter*) ; 
 TYPE_2__* FUNC4 (struct drm_connector*,struct i2c_adapter*) ; 
 scalar_t__ FUNC5 () ; 
 struct nouveau_encoder* FUNC6 (struct drm_connector*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct nouveau_connector* FUNC8 (struct drm_connector*) ; 
 struct nouveau_encoder* FUNC9 (struct drm_connector*) ; 
 struct nouveau_encoder* FUNC10 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_connector*,struct nouveau_encoder*) ; 
 struct nouveau_drm* FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_tv_disable ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct drm_encoder*,struct drm_connector*) ; 
 struct drm_encoder* FUNC18 (struct nouveau_encoder*) ; 
 int FUNC19 () ; 

__attribute__((used)) static enum drm_connector_status
FUNC20(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct nouveau_drm *drm = FUNC12(dev);
	struct nouveau_connector *nv_connector = FUNC8(connector);
	struct nouveau_encoder *nv_encoder = NULL;
	struct nouveau_encoder *nv_partner;
	struct i2c_adapter *i2c;
	int type;
	int ret;
	enum drm_connector_status conn_status = connector_status_disconnected;

	/* Cleanup the previous EDID block. */
	if (nv_connector->edid) {
		FUNC1(connector, NULL);
		FUNC7(nv_connector->edid);
		nv_connector->edid = NULL;
	}

	/* Outputs are only polled while runtime active, so resuming the
	 * device here is unnecessary (and would deadlock upon runtime suspend
	 * because it waits for polling to finish). We do however, want to
	 * prevent the autosuspend timer from elapsing during this operation
	 * if possible.
	 */
	if (FUNC5()) {
		FUNC13(dev->dev);
	} else {
		ret = FUNC14(dev->dev);
		if (ret < 0 && ret != -EACCES)
			return conn_status;
	}

	nv_encoder = FUNC9(connector);
	if (nv_encoder && (i2c = nv_encoder->i2c) != NULL) {
		if ((FUNC19() &
		     VGA_SWITCHEROO_CAN_SWITCH_DDC) &&
		    nv_connector->type == DCB_CONNECTOR_LVDS)
			nv_connector->edid = FUNC4(connector,
								     i2c);
		else
			nv_connector->edid = FUNC3(connector, i2c);

		FUNC1(connector,
							nv_connector->edid);
		if (!nv_connector->edid) {
			FUNC0(drm, "DDC responded, but no EDID for %s\n",
				 connector->name);
			goto detect_analog;
		}

		/* Override encoder type for DVI-I based on whether EDID
		 * says the display is digital or analog, both use the
		 * same i2c channel so the value returned from ddc_detect
		 * isn't necessarily correct.
		 */
		nv_partner = NULL;
		if (nv_encoder->dcb->type == DCB_OUTPUT_TMDS)
			nv_partner = FUNC6(connector, DCB_OUTPUT_ANALOG);
		if (nv_encoder->dcb->type == DCB_OUTPUT_ANALOG)
			nv_partner = FUNC6(connector, DCB_OUTPUT_TMDS);

		if (nv_partner && ((nv_encoder->dcb->type == DCB_OUTPUT_ANALOG &&
				    nv_partner->dcb->type == DCB_OUTPUT_TMDS) ||
				   (nv_encoder->dcb->type == DCB_OUTPUT_TMDS &&
				    nv_partner->dcb->type == DCB_OUTPUT_ANALOG))) {
			if (nv_connector->edid->input & DRM_EDID_INPUT_DIGITAL)
				type = DCB_OUTPUT_TMDS;
			else
				type = DCB_OUTPUT_ANALOG;

			nv_encoder = FUNC6(connector, type);
		}

		FUNC11(connector, nv_encoder);
		conn_status = connector_status_connected;
		FUNC2(&nv_connector->aux, nv_connector->edid);
		goto out;
	}

	nv_encoder = FUNC10(connector);
	if (nv_encoder) {
		FUNC11(connector, nv_encoder);
		conn_status = connector_status_connected;
		goto out;
	}

detect_analog:
	nv_encoder = FUNC6(connector, DCB_OUTPUT_ANALOG);
	if (!nv_encoder && !nouveau_tv_disable)
		nv_encoder = FUNC6(connector, DCB_OUTPUT_TV);
	if (nv_encoder && force) {
		struct drm_encoder *encoder = FUNC18(nv_encoder);
		const struct drm_encoder_helper_funcs *helper =
						encoder->helper_private;

		if (helper->detect(encoder, connector) ==
						connector_status_connected) {
			FUNC11(connector, nv_encoder);
			conn_status = connector_status_connected;
			goto out;
		}

	}

 out:

	FUNC15(dev->dev);
	FUNC16(dev->dev);

	return conn_status;
}