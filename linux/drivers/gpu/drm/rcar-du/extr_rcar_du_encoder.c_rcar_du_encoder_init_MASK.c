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
struct rcar_du_encoder {int output; } ;
struct rcar_du_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; TYPE_1__* info; struct rcar_du_encoder** encoders; } ;
struct drm_panel {int dummy; } ;
struct drm_encoder {TYPE_2__* funcs; scalar_t__ name; } ;
typedef  struct drm_panel drm_bridge ;
struct device_node {int dummy; } ;
typedef  enum rcar_du_output { ____Placeholder_rcar_du_output } rcar_du_output ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct drm_encoder*) ;} ;
struct TYPE_3__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DPI ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_NONE ; 
 int ENOLINK ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_panel*) ; 
 int FUNC1 (struct drm_panel*) ; 
 int RCAR_DU_OUTPUT_DPAD0 ; 
 int RCAR_DU_OUTPUT_DPAD1 ; 
 int RCAR_DU_OUTPUT_LVDS1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct device_node*,int) ; 
 struct drm_panel* FUNC3 (int /*<<< orphan*/ ,struct drm_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rcar_du_encoder*) ; 
 struct rcar_du_encoder* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_encoder*,struct drm_panel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encoder_funcs ; 
 int /*<<< orphan*/  encoder_helper_funcs ; 
 struct drm_panel* FUNC10 (struct device_node*) ; 
 struct drm_panel* FUNC11 (struct device_node*) ; 
 int FUNC12 (struct device_node*) ; 
 struct drm_encoder* FUNC13 (struct rcar_du_encoder*) ; 
 scalar_t__ FUNC14 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_encoder*) ; 

int FUNC16(struct rcar_du_device *rcdu,
			 enum rcar_du_output output,
			 struct device_node *enc_node)
{
	struct rcar_du_encoder *renc;
	struct drm_encoder *encoder;
	struct drm_bridge *bridge;
	int ret;

	renc = FUNC5(rcdu->dev, sizeof(*renc), GFP_KERNEL);
	if (renc == NULL)
		return -ENOMEM;

	rcdu->encoders[output] = renc;
	renc->output = output;
	encoder = FUNC13(renc);

	FUNC2(rcdu->dev, "initializing encoder %pOF for output %u\n",
		enc_node, output);

	/*
	 * Locate the DRM bridge from the DT node. For the DPAD outputs, if the
	 * DT node has a single port, assume that it describes a panel and
	 * create a panel bridge.
	 */
	if ((output == RCAR_DU_OUTPUT_DPAD0 ||
	     output == RCAR_DU_OUTPUT_DPAD1) &&
	    FUNC12(enc_node) == 1) {
		struct drm_panel *panel = FUNC11(enc_node);

		if (FUNC0(panel)) {
			ret = FUNC1(panel);
			goto done;
		}

		bridge = FUNC3(rcdu->dev, panel,
						   DRM_MODE_CONNECTOR_DPI);
		if (FUNC0(bridge)) {
			ret = FUNC1(bridge);
			goto done;
		}
	} else {
		bridge = FUNC10(enc_node);
		if (!bridge) {
			ret = -EPROBE_DEFER;
			goto done;
		}
	}

	/*
	 * On Gen3 skip the LVDS1 output if the LVDS1 encoder is used as a
	 * companion for LVDS0 in dual-link mode.
	 */
	if (rcdu->info->gen >= 3 && output == RCAR_DU_OUTPUT_LVDS1) {
		if (FUNC14(bridge)) {
			ret = -ENOLINK;
			goto done;
		}
	}

	ret = FUNC9(rcdu->ddev, encoder, &encoder_funcs,
			       DRM_MODE_ENCODER_NONE, NULL);
	if (ret < 0)
		goto done;

	FUNC8(encoder, &encoder_helper_funcs);

	/*
	 * Attach the bridge to the encoder. The bridge will create the
	 * connector.
	 */
	ret = FUNC6(encoder, bridge, NULL);
	if (ret) {
		FUNC7(encoder);
		return ret;
	}

done:
	if (ret < 0) {
		if (encoder->name)
			encoder->funcs->destroy(encoder);
		FUNC4(rcdu->dev, renc);
	}

	return ret;
}