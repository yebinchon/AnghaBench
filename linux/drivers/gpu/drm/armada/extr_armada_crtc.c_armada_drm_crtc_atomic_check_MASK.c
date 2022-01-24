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
struct drm_crtc_state {int planes_changed; scalar_t__ color_mgmt_changed; scalar_t__ gamma_lut; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {int /*<<< orphan*/  name; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct drm_crtc *crtc,
					struct drm_crtc_state *state)
{
	FUNC0("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

	if (state->gamma_lut && FUNC1(state->gamma_lut) != 256)
		return -EINVAL;

	if (state->color_mgmt_changed)
		state->planes_changed = true;

	return 0;
}