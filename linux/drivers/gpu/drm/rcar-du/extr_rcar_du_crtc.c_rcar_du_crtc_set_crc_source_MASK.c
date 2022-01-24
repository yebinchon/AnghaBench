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
struct TYPE_2__ {int source; unsigned int index; } ;
struct rcar_du_crtc_state {TYPE_1__ crc; } ;
struct rcar_du_crtc {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
typedef  enum vsp1_du_crc_source { ____Placeholder_vsp1_du_crc_source } vsp1_du_crc_source ;

/* Variables and functions */
 int EDEADLK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct drm_crtc_state*) ; 
 int FUNC2 (struct drm_atomic_state*) ; 
 struct drm_crtc_state* FUNC3 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_atomic_state* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC11 (struct rcar_du_crtc*,char const*,int*) ; 
 struct rcar_du_crtc* FUNC12 (struct drm_crtc*) ; 
 struct rcar_du_crtc_state* FUNC13 (struct drm_crtc_state*) ; 

__attribute__((used)) static int FUNC14(struct drm_crtc *crtc,
				       const char *source_name)
{
	struct rcar_du_crtc *rcrtc = FUNC12(crtc);
	struct drm_modeset_acquire_ctx ctx;
	struct drm_crtc_state *crtc_state;
	struct drm_atomic_state *state;
	enum vsp1_du_crc_source source;
	unsigned int index;
	int ret;

	ret = FUNC11(rcrtc, source_name, &source);
	if (ret < 0)
		return ret;

	index = ret;

	/* Perform an atomic commit to set the CRC source. */
	FUNC8(&ctx, 0);

	state = FUNC4(crtc->dev);
	if (!state) {
		ret = -ENOMEM;
		goto unlock;
	}

	state->acquire_ctx = &ctx;

retry:
	crtc_state = FUNC3(state, crtc);
	if (!FUNC0(crtc_state)) {
		struct rcar_du_crtc_state *rcrtc_state;

		rcrtc_state = FUNC13(crtc_state);
		rcrtc_state->crc.source = source;
		rcrtc_state->crc.index = index;

		ret = FUNC2(state);
	} else {
		ret = FUNC1(crtc_state);
	}

	if (ret == -EDEADLK) {
		FUNC5(state);
		FUNC9(&ctx);
		goto retry;
	}

	FUNC6(state);

unlock:
	FUNC10(&ctx);
	FUNC7(&ctx);

	return ret;
}