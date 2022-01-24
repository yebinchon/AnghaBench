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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct msm_display_topology {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_display_mode {int /*<<< orphan*/  private_flags; int /*<<< orphan*/  flags; } ;
struct drm_crtc_state {struct drm_display_mode adjusted_mode; struct drm_display_mode mode; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;
struct dpu_kms {int /*<<< orphan*/  rm; } ;
struct dpu_encoder_virt {int num_phys_encs; int mode_set_complete; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_4__ {int (* atomic_check ) (struct dpu_encoder_phys*,struct drm_crtc_state*,struct drm_connector_state*) ;int /*<<< orphan*/  (* mode_fixup ) (struct dpu_encoder_phys*,struct drm_display_mode const*,struct drm_display_mode*) ;} ;
struct dpu_encoder_phys {TYPE_2__ ops; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_virt*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_virt*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 struct msm_display_topology FUNC5 (struct dpu_encoder_virt*,struct dpu_kms*,struct drm_display_mode*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct drm_encoder*,struct drm_crtc_state*,struct msm_display_topology,int) ; 
 scalar_t__ FUNC7 (struct drm_crtc_state*) ; 
 int FUNC8 (struct dpu_encoder_phys*,struct drm_crtc_state*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct dpu_encoder_phys*,struct drm_display_mode const*,struct drm_display_mode*) ; 
 struct dpu_encoder_virt* FUNC10 (struct drm_encoder*) ; 
 struct dpu_kms* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(
		struct drm_encoder *drm_enc,
		struct drm_crtc_state *crtc_state,
		struct drm_connector_state *conn_state)
{
	struct dpu_encoder_virt *dpu_enc;
	struct msm_drm_private *priv;
	struct dpu_kms *dpu_kms;
	const struct drm_display_mode *mode;
	struct drm_display_mode *adj_mode;
	struct msm_display_topology topology;
	int i = 0;
	int ret = 0;

	if (!drm_enc || !crtc_state || !conn_state) {
		FUNC1("invalid arg(s), drm_enc %d, crtc/conn state %d/%d\n",
				drm_enc != 0, crtc_state != 0, conn_state != 0);
		return -EINVAL;
	}

	dpu_enc = FUNC10(drm_enc);
	FUNC0(dpu_enc, "\n");

	priv = drm_enc->dev->dev_private;
	dpu_kms = FUNC11(priv->kms);
	mode = &crtc_state->mode;
	adj_mode = &crtc_state->adjusted_mode;
	FUNC12(FUNC3(drm_enc));

	/*
	 * display drivers may populate private fields of the drm display mode
	 * structure while registering possible modes of a connector with DRM.
	 * These private fields are not populated back while DRM invokes
	 * the mode_set callbacks. This module retrieves and populates the
	 * private fields of the given mode.
	 */
	FUNC4(conn_state->connector, adj_mode);

	/* perform atomic check on the first physical encoder (master) */
	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

		if (phys && phys->ops.atomic_check)
			ret = phys->ops.atomic_check(phys, crtc_state,
					conn_state);
		else if (phys && phys->ops.mode_fixup)
			if (!phys->ops.mode_fixup(phys, mode, adj_mode))
				ret = -EINVAL;

		if (ret) {
			FUNC2(dpu_enc,
					"mode unsupported, phys idx %d\n", i);
			break;
		}
	}

	topology = FUNC5(dpu_enc, dpu_kms, adj_mode);

	/* Reserve dynamic resources now. Indicating AtomicTest phase */
	if (!ret) {
		/*
		 * Avoid reserving resources when mode set is pending. Topology
		 * info may not be available to complete reservation.
		 */
		if (FUNC7(crtc_state)
				&& dpu_enc->mode_set_complete) {
			ret = FUNC6(&dpu_kms->rm, drm_enc, crtc_state,
					     topology, true);
			dpu_enc->mode_set_complete = false;
		}
	}

	FUNC13(FUNC3(drm_enc), adj_mode->flags,
			adj_mode->private_flags);

	return ret;
}