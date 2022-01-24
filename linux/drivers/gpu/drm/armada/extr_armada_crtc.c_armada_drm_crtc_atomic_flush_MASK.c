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
struct drm_crtc {int /*<<< orphan*/  state; int /*<<< orphan*/  name; TYPE_1__ base; } ;
struct armada_crtc {int update_pending; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  regs; int /*<<< orphan*/  regs_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DUMB_FRAMEDONE_ENA ; 
 int /*<<< orphan*/  FUNC1 (struct armada_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct armada_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct armada_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc,
					 struct drm_crtc_state *old_crtc_state)
{
	struct armada_crtc *dcrtc = FUNC6(crtc);

	FUNC0("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

	FUNC4(dcrtc->regs, dcrtc->regs_idx);

	/*
	 * If we aren't doing a full modeset, then we need to queue
	 * the event here.
	 */
	if (!FUNC5(crtc->state)) {
		dcrtc->update_pending = true;
		FUNC2(crtc);
		FUNC7(&dcrtc->irq_lock);
		FUNC1(dcrtc, DUMB_FRAMEDONE_ENA);
		FUNC8(&dcrtc->irq_lock);
	} else {
		FUNC7(&dcrtc->irq_lock);
		FUNC3(dcrtc, dcrtc->regs);
		FUNC8(&dcrtc->irq_lock);
	}
}