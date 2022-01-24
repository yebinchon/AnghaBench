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
struct msm_display_topology {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_encoder {TYPE_3__ base; } ;
struct drm_crtc_state {TYPE_2__* crtc; } ;
struct dpu_rm_requirements {int dummy; } ;
struct dpu_rm {int /*<<< orphan*/  rm_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dpu_rm*,struct drm_encoder*,struct drm_crtc_state*,struct dpu_rm_requirements*) ; 
 int FUNC4 (struct dpu_rm*,struct drm_encoder*,struct drm_crtc_state*,struct dpu_rm_requirements*,struct msm_display_topology) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_rm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
		struct dpu_rm *rm,
		struct drm_encoder *enc,
		struct drm_crtc_state *crtc_state,
		struct msm_display_topology topology,
		bool test_only)
{
	struct dpu_rm_requirements reqs;
	int ret;

	/* Check if this is just a page-flip */
	if (!FUNC6(crtc_state))
		return 0;

	FUNC2("reserving hw for enc %d crtc %d test_only %d\n",
		      enc->base.id, crtc_state->crtc->base.id, test_only);

	FUNC7(&rm->rm_lock);

	ret = FUNC4(rm, enc, crtc_state, &reqs,
					    topology);
	if (ret) {
		FUNC1("failed to populate hw requirements\n");
		goto end;
	}

	ret = FUNC3(rm, enc, crtc_state, &reqs);
	if (ret) {
		FUNC1("failed to reserve hw resources: %d\n", ret);
		FUNC5(rm, enc->base.id);
	} else if (test_only) {
		 /* test_only: test the reservation and then undo */
		FUNC0("test_only: discard test [enc: %d]\n",
				enc->base.id);
		FUNC5(rm, enc->base.id);
	}

end:
	FUNC8(&rm->rm_lock);

	return ret;
}