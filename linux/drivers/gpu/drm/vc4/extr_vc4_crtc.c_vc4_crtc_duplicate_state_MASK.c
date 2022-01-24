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
struct vc4_crtc_state {struct drm_crtc_state base; int /*<<< orphan*/  margins; int /*<<< orphan*/  feed_txp; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct vc4_crtc_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct vc4_crtc_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *FUNC3(struct drm_crtc *crtc)
{
	struct vc4_crtc_state *vc4_state, *old_vc4_state;

	vc4_state = FUNC1(sizeof(*vc4_state), GFP_KERNEL);
	if (!vc4_state)
		return NULL;

	old_vc4_state = FUNC2(crtc->state);
	vc4_state->feed_txp = old_vc4_state->feed_txp;
	vc4_state->margins = old_vc4_state->margins;

	FUNC0(crtc, &vc4_state->base);
	return &vc4_state->base;
}