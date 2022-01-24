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
struct drm_crtc_state {int /*<<< orphan*/  active; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_1__* state; int /*<<< orphan*/  name; TYPE_2__ base; } ;
struct armada_crtc {TYPE_3__* variant; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* enable ) (struct armada_crtc*,TYPE_4__*) ;} ;
struct TYPE_5__ {TYPE_4__ adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct armada_crtc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 struct armada_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct armada_crtc*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc,
					  struct drm_crtc_state *old_state)
{
	struct armada_crtc *dcrtc = FUNC6(crtc);

	FUNC0("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

	if (!old_state->active) {
		/*
		 * This modeset is enabling the CRTC after it having
		 * been disabled.  Reverse the call to ->disable in
		 * the atomic_disable().
		 */
		if (dcrtc->variant->enable)
			dcrtc->variant->enable(dcrtc, &crtc->state->adjusted_mode);
	}
	FUNC3(dcrtc, true);
	FUNC5(crtc);

	if (crtc->state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
		FUNC1(FUNC4(crtc));

	FUNC2(crtc);
}