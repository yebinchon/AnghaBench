#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_1__ base; } ;
struct dpu_crtc_state {int dummy; } ;
struct dpu_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_crtc_state*) ; 
 struct dpu_crtc* FUNC4 (struct drm_crtc*) ; 
 struct dpu_crtc_state* FUNC5 (struct drm_crtc_state*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
		struct drm_crtc_state *state)
{
	struct dpu_crtc *dpu_crtc;
	struct dpu_crtc_state *cstate;

	if (!crtc || !state) {
		FUNC1("invalid argument(s)\n");
		return;
	}

	dpu_crtc = FUNC4(crtc);
	cstate = FUNC5(state);

	FUNC0("crtc%d\n", crtc->base.id);

	FUNC2(state);

	FUNC3(cstate);
}