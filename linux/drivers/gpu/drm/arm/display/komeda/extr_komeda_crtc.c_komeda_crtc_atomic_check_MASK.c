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
struct komeda_crtc_state {int dummy; } ;
struct komeda_crtc {int /*<<< orphan*/  master; int /*<<< orphan*/  slave; } ;
struct drm_crtc_state {scalar_t__ active; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct komeda_crtc*,struct komeda_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct komeda_crtc_state*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct komeda_crtc_state*) ; 
 struct komeda_crtc* FUNC4 (struct drm_crtc*) ; 
 struct komeda_crtc_state* FUNC5 (struct drm_crtc_state*) ; 

__attribute__((used)) static int
FUNC6(struct drm_crtc *crtc,
			 struct drm_crtc_state *state)
{
	struct komeda_crtc *kcrtc = FUNC4(crtc);
	struct komeda_crtc_state *kcrtc_st = FUNC5(state);
	int err;

	if (FUNC0(state))
		FUNC2(kcrtc_st);

	if (state->active) {
		err = FUNC1(kcrtc, kcrtc_st);
		if (err)
			return err;
	}

	/* release unclaimed pipeline resources */
	err = FUNC3(kcrtc->slave, kcrtc_st);
	if (err)
		return err;

	err = FUNC3(kcrtc->master, kcrtc_st);
	if (err)
		return err;

	return 0;
}