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
struct seq_file {struct drm_connector* private; } ;
struct intel_dp {int /*<<< orphan*/  fec_capable; int /*<<< orphan*/  force_dsc_en; int /*<<< orphan*/  dsc_dpcd; } ;
struct TYPE_7__ {int /*<<< orphan*/  compression_enable; } ;
struct intel_crtc_state {TYPE_3__ dsc_params; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  connection_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc {int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; } ;
struct drm_connector {scalar_t__ status; TYPE_2__* state; struct drm_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODESET_ACQUIRE_INTERRUPTIBLE ; 
 int EDEADLK ; 
 int ENODEV ; 
 scalar_t__ connector_status_connected ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct drm_modeset_acquire_ctx*) ; 
 struct intel_dp* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 struct intel_crtc_state* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct seq_file *m, void *data)
{
	struct drm_connector *connector = m->private;
	struct drm_device *dev = connector->dev;
	struct drm_crtc *crtc;
	struct intel_dp *intel_dp;
	struct drm_modeset_acquire_ctx ctx;
	struct intel_crtc_state *crtc_state = NULL;
	int ret = 0;
	bool try_again = false;

	FUNC3(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);

	do {
		try_again = false;
		ret = FUNC6(&dev->mode_config.connection_mutex,
				       &ctx);
		if (ret) {
			if (ret == -EDEADLK && !FUNC4(&ctx)) {
				try_again = true;
				continue;
			}
			break;
		}
		crtc = connector->state->crtc;
		if (connector->status != connector_status_connected || !crtc) {
			ret = -ENODEV;
			break;
		}
		ret = FUNC6(&crtc->mutex, &ctx);
		if (ret == -EDEADLK) {
			ret = FUNC4(&ctx);
			if (!ret) {
				try_again = true;
				continue;
			}
			break;
		} else if (ret) {
			break;
		}
		intel_dp = FUNC7(&FUNC8(connector)->base);
		crtc_state = FUNC11(crtc->state);
		FUNC10(m, "DSC_Enabled: %s\n",
			   FUNC12(crtc_state->dsc_params.compression_enable));
		FUNC10(m, "DSC_Sink_Support: %s\n",
			   FUNC12(FUNC0(intel_dp->dsc_dpcd)));
		FUNC10(m, "Force_DSC_Enable: %s\n",
			   FUNC12(intel_dp->force_dsc_en));
		if (!FUNC9(intel_dp))
			FUNC10(m, "FEC_Sink_Support: %s\n",
				   FUNC12(FUNC1(intel_dp->fec_capable)));
	} while (try_again);

	FUNC5(&ctx);
	FUNC2(&ctx);

	return ret;
}