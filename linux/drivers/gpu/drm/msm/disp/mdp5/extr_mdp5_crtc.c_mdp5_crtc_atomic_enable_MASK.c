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
struct mdp5_kms {int /*<<< orphan*/  base; TYPE_1__* pdev; } ;
struct mdp5_crtc_state {scalar_t__ cmd_mode; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  ctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ iova; } ;
struct mdp5_crtc {int enabled; int /*<<< orphan*/  pp_done; int /*<<< orphan*/  err; TYPE_2__ cursor; scalar_t__ lm_cursor_enabled; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct mdp5_kms* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_crtc* FUNC11 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_state)
{
	struct mdp5_crtc *mdp5_crtc = FUNC11(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC12(crtc->state);
	struct mdp5_kms *mdp5_kms = FUNC2(crtc);
	struct device *dev = &mdp5_kms->pdev->dev;

	FUNC0("%s", crtc->name);

	if (FUNC1(mdp5_crtc->enabled))
		return;

	FUNC8(dev);

	if (mdp5_crtc->lm_cursor_enabled) {
		/*
		 * Restore LM cursor state, as it might have been lost
		 * with suspend:
		 */
		if (mdp5_crtc->cursor.iova) {
			unsigned long flags;

			FUNC9(&mdp5_crtc->cursor.lock, flags);
			FUNC4(crtc);
			FUNC10(&mdp5_crtc->cursor.lock, flags);

			FUNC6(mdp5_cstate->ctl,
					    &mdp5_cstate->pipeline, 0, true);
		} else {
			FUNC6(mdp5_cstate->ctl,
					    &mdp5_cstate->pipeline, 0, false);
		}
	}

	/* Restore vblank irq handling after power is enabled */
	FUNC5(crtc);

	FUNC3(crtc);

	FUNC7(&mdp5_kms->base, &mdp5_crtc->err);

	if (mdp5_cstate->cmd_mode)
		FUNC7(&mdp5_kms->base, &mdp5_crtc->pp_done);

	mdp5_crtc->enabled = true;
}