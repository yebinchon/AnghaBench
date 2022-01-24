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
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_2__ base; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {scalar_t__ enable_bw_release; } ;
struct dpu_kms {TYPE_1__ perf; int /*<<< orphan*/  bandwidth_ref; int /*<<< orphan*/  catalog; } ;
struct dpu_crtc_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ bw_ctl; } ;
struct dpu_crtc {TYPE_3__ cur_perf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_kms*,struct drm_crtc*) ; 
 struct dpu_kms* FUNC3 (struct drm_crtc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct dpu_crtc* FUNC5 (struct drm_crtc*) ; 
 struct dpu_crtc_state* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct drm_crtc *crtc)
{
	struct dpu_crtc *dpu_crtc;
	struct dpu_crtc_state *dpu_cstate;
	struct dpu_kms *kms;

	if (!crtc) {
		FUNC1("invalid crtc\n");
		return;
	}

	kms = FUNC3(crtc);
	if (!kms || !kms->catalog) {
		FUNC1("invalid kms\n");
		return;
	}

	dpu_crtc = FUNC5(crtc);
	dpu_cstate = FUNC6(crtc->state);

	if (FUNC4(&kms->bandwidth_ref) > 0)
		return;

	/* Release the bandwidth */
	if (kms->perf.enable_bw_release) {
		FUNC7(crtc->base.id);
		FUNC0("Release BW crtc=%d\n", crtc->base.id);
		dpu_crtc->cur_perf.bw_ctl = 0;
		FUNC2(kms, crtc);
	}
}