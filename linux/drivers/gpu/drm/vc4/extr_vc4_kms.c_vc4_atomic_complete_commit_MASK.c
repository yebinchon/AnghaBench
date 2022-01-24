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
struct vc4_dev {int /*<<< orphan*/  async_modeset; } ;
struct vc4_crtc {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_atomic_state {TYPE_2__* crtcs; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct drm_atomic_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_atomic_state*) ; 
 struct vc4_crtc* FUNC11 (int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vc4_dev*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct drm_atomic_state *state)
{
	struct drm_device *dev = state->dev;
	struct vc4_dev *vc4 = FUNC12(dev);
	struct vc4_crtc *vc4_crtc;
	int i;

	for (i = 0; i < dev->mode_config.num_crtc; i++) {
		if (!state->crtcs[i].ptr || !state->crtcs[i].commit)
			continue;

		vc4_crtc = FUNC11(state->crtcs[i].ptr);
		FUNC15(dev, vc4_crtc->channel);
	}

	FUNC8(dev, state, false);

	FUNC7(state);

	FUNC3(dev, state);

	FUNC14(vc4, state);

	FUNC5(dev, state, 0);

	FUNC4(dev, state);

	FUNC6(state);

	FUNC2(state);

	FUNC9(dev, state);

	FUNC0(dev, state);

	FUNC1(state);

	FUNC10(state);

	FUNC13(&vc4->async_modeset);
}