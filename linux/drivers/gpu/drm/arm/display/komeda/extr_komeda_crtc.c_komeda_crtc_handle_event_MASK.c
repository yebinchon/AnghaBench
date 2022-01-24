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
typedef  int u32 ;
struct komeda_wb_connector {int /*<<< orphan*/  base; } ;
struct komeda_events {int* pipes; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; } ;
struct komeda_crtc {struct drm_crtc base; int /*<<< orphan*/ * disable_done; struct komeda_wb_connector* wb_conn; TYPE_1__* master; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_5__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_4__ {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int KOMEDA_EVENT_EOW ; 
 int KOMEDA_EVENT_FLIP ; 
 int KOMEDA_EVENT_VSYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct komeda_crtc   *kcrtc,
			      struct komeda_events *evts)
{
	struct drm_crtc *crtc = &kcrtc->base;
	u32 events = evts->pipes[kcrtc->master->id];

	if (events & KOMEDA_EVENT_VSYNC)
		FUNC3(crtc);

	if (events & KOMEDA_EVENT_EOW) {
		struct komeda_wb_connector *wb_conn = kcrtc->wb_conn;

		if (wb_conn)
			FUNC6(&wb_conn->base, 0);
		else
			FUNC1("CRTC[%d]: EOW happen but no wb_connector.\n",
				 FUNC4(&kcrtc->base));
	}
	/* will handle it together with the write back support */
	if (events & KOMEDA_EVENT_EOW)
		FUNC0("EOW.\n");

	if (events & KOMEDA_EVENT_FLIP) {
		unsigned long flags;
		struct drm_pending_vblank_event *event;

		FUNC7(&crtc->dev->event_lock, flags);
		if (kcrtc->disable_done) {
			FUNC2(kcrtc->disable_done);
			kcrtc->disable_done = NULL;
		} else if (crtc->state->event) {
			event = crtc->state->event;
			/*
			 * Consume event before notifying drm core that flip
			 * happened.
			 */
			crtc->state->event = NULL;
			FUNC5(crtc, event);
		} else {
			FUNC1("CRTC[%d]: FLIP happen but no pending commit.\n",
				 FUNC4(&kcrtc->base));
		}
		FUNC8(&crtc->dev->event_lock, flags);
	}
}