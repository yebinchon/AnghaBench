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
typedef  int /*<<< orphan*/  uint32_t ;
struct mdp5_kms {TYPE_3__* pdev; } ;
struct TYPE_5__ {scalar_t__ r_mixer; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct TYPE_6__ {int x; int y; int /*<<< orphan*/  lock; scalar_t__ height; scalar_t__ width; } ;
struct mdp5_crtc {TYPE_2__ cursor; int /*<<< orphan*/  lm_cursor_enabled; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {TYPE_4__* state; struct drm_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  enable; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mdp5_kms* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_crtc* FUNC11 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC12 (TYPE_4__*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct drm_crtc *crtc, int x, int y)
{
	struct mdp5_kms *mdp5_kms = FUNC2(crtc);
	struct mdp5_crtc *mdp5_crtc = FUNC11(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC12(crtc->state);
	uint32_t flush_mask = FUNC6(0);
	struct drm_device *dev = crtc->dev;
	uint32_t roi_w;
	uint32_t roi_h;
	unsigned long flags;

	if (!mdp5_crtc->lm_cursor_enabled) {
		FUNC1(dev->dev,
			 "cursor_move is deprecated with cursor planes\n");
		return -EINVAL;
	}

	/* don't support LM cursors when we we have source split enabled */
	if (mdp5_cstate->pipeline.r_mixer)
		return -EINVAL;

	/* In case the CRTC is disabled, just drop the cursor update */
	if (FUNC13(!crtc->state->enable))
		return 0;

	/* accept negative x/y coordinates up to maximum cursor overlap */
	mdp5_crtc->cursor.x = x = FUNC4(x, -(int)mdp5_crtc->cursor.width);
	mdp5_crtc->cursor.y = y = FUNC4(y, -(int)mdp5_crtc->cursor.height);

	FUNC3(crtc, &roi_w, &roi_h);

	FUNC7(&mdp5_kms->pdev->dev);

	FUNC9(&mdp5_crtc->cursor.lock, flags);
	FUNC5(crtc);
	FUNC10(&mdp5_crtc->cursor.lock, flags);

	FUNC0(crtc, flush_mask);

	FUNC8(&mdp5_kms->pdev->dev);

	return 0;
}