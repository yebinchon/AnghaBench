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
struct atmel_hlcdc_crtc_state {struct drm_crtc_state base; int /*<<< orphan*/  output_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct atmel_hlcdc_crtc_state* FUNC2 (int /*<<< orphan*/ ) ; 
 struct atmel_hlcdc_crtc_state* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC4(struct drm_crtc *crtc)
{
	struct atmel_hlcdc_crtc_state *state, *cur;

	if (FUNC0(!crtc->state))
		return NULL;

	state = FUNC3(sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;
	FUNC1(crtc, &state->base);

	cur = FUNC2(crtc->state);
	state->output_mode = cur->output_mode;

	return &state->base;
}