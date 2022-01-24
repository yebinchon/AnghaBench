#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;
struct dpu_crtc_state {struct drm_crtc_state base; } ;
struct dpu_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct dpu_crtc_state* FUNC2 (struct dpu_crtc_state*,int,int /*<<< orphan*/ ) ; 
 struct dpu_crtc* FUNC3 (struct drm_crtc*) ; 
 struct dpu_crtc_state* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *FUNC5(struct drm_crtc *crtc)
{
	struct dpu_crtc *dpu_crtc;
	struct dpu_crtc_state *cstate, *old_cstate;

	if (!crtc || !crtc->state) {
		FUNC0("invalid argument(s)\n");
		return NULL;
	}

	dpu_crtc = FUNC3(crtc);
	old_cstate = FUNC4(crtc->state);
	cstate = FUNC2(old_cstate, sizeof(*old_cstate), GFP_KERNEL);
	if (!cstate) {
		FUNC0("failed to allocate state\n");
		return NULL;
	}

	/* duplicate base helper */
	FUNC1(crtc, &cstate->base);

	return &cstate->base;
}