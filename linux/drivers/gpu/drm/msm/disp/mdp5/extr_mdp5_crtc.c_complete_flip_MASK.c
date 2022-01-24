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
struct mdp5_pipeline {int dummy; } ;
struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_ctl* ctl; struct mdp5_pipeline pipeline; } ;
struct mdp5_crtc {struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc {TYPE_1__* state; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_ctl*,struct mdp5_pipeline*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_crtc* FUNC5 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc, struct drm_file *file)
{
	struct mdp5_crtc_state *mdp5_cstate = FUNC6(crtc->state);
	struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
	struct mdp5_crtc *mdp5_crtc = FUNC5(crtc);
	struct mdp5_ctl *ctl = mdp5_cstate->ctl;
	struct drm_device *dev = crtc->dev;
	struct drm_pending_vblank_event *event;
	unsigned long flags;

	FUNC3(&dev->event_lock, flags);
	event = mdp5_crtc->event;
	if (event) {
		mdp5_crtc->event = NULL;
		FUNC0("%s: send event: %p", crtc->name, event);
		FUNC1(crtc, event);
	}
	FUNC4(&dev->event_lock, flags);

	if (ctl && !crtc->state->enable) {
		/* set STAGE_UNUSED for all layers */
		FUNC2(ctl, pipeline, NULL, NULL, 0, 0);
		/* XXX: What to do here? */
		/* mdp5_crtc->ctl = NULL; */
	}
}