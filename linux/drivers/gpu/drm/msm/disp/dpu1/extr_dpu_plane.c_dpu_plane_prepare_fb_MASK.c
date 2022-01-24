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
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {TYPE_1__ base; } ;
struct dpu_plane_state {scalar_t__ aspace; } ;
struct dpu_plane {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {scalar_t__ aspace; } ;
struct dpu_kms {TYPE_2__ base; } ;
struct dpu_hw_fmt_layout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_plane*,char*,int) ; 
 struct dpu_kms* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,struct drm_framebuffer*,struct dpu_hw_fmt_layout*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_plane*,struct drm_plane_state*) ; 
 int FUNC6 (struct drm_framebuffer*,scalar_t__) ; 
 struct dpu_plane* FUNC7 (struct drm_plane*) ; 
 struct dpu_plane_state* FUNC8 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC9(struct drm_plane *plane,
		struct drm_plane_state *new_state)
{
	struct drm_framebuffer *fb = new_state->fb;
	struct dpu_plane *pdpu = FUNC7(plane);
	struct dpu_plane_state *pstate = FUNC8(new_state);
	struct dpu_hw_fmt_layout layout;
	struct dpu_kms *kms = FUNC3(&pdpu->base);
	int ret;

	if (!new_state->fb)
		return 0;

	FUNC0(pdpu, "FB[%u]\n", fb->base.id);

	/* cache aspace */
	pstate->aspace = kms->base.aspace;

	/*
	 * TODO: Need to sort out the msm_framebuffer_prepare() call below so
	 *       we can use msm_atomic_prepare_fb() instead of doing the
	 *       implicit fence and fb prepare by hand here.
	 */
	FUNC5(plane, new_state);

	if (pstate->aspace) {
		ret = FUNC6(new_state->fb,
				pstate->aspace);
		if (ret) {
			FUNC1("failed to prepare framebuffer\n");
			return ret;
		}
	}

	/* validate framebuffer layout before commit */
	ret = FUNC4(pstate->aspace,
			new_state->fb, &layout);
	if (ret) {
		FUNC2(pdpu, "failed to get format layout, %d\n", ret);
		return ret;
	}

	return 0;
}