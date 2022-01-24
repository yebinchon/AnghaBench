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
struct drm_plane_state {int mode_changed; } ;
struct drm_plane {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  acquire_ctx; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_crtc_state {int mode_changed; } ;
struct drm_connector_state {int mode_changed; } ;
struct drm_connector {TYPE_1__* encoder; struct drm_device* dev; } ;
struct drm_atomic_state {int /*<<< orphan*/  acquire_ctx; } ;
struct TYPE_6__ {struct drm_plane* primary; } ;
struct amdgpu_crtc {TYPE_3__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int FUNC1 (struct drm_plane_state*) ; 
 int FUNC2 (struct drm_atomic_state*) ; 
 struct drm_plane_state* FUNC3 (struct drm_atomic_state*,struct drm_connector*) ; 
 struct drm_plane_state* FUNC4 (struct drm_atomic_state*,TYPE_3__*) ; 
 struct drm_plane_state* FUNC5 (struct drm_atomic_state*,struct drm_plane*) ; 
 struct drm_atomic_state* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_atomic_state*) ; 
 struct amdgpu_crtc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct drm_connector *connector)
{
	int ret = 0;
	struct drm_device *ddev = connector->dev;
	struct drm_atomic_state *state = FUNC6(ddev);
	struct amdgpu_crtc *disconnected_acrtc = FUNC8(connector->encoder->crtc);
	struct drm_plane *plane = disconnected_acrtc->base.primary;
	struct drm_connector_state *conn_state;
	struct drm_crtc_state *crtc_state;
	struct drm_plane_state *plane_state;

	if (!state)
		return -ENOMEM;

	state->acquire_ctx = ddev->mode_config.acquire_ctx;

	/* Construct an atomic state to restore previous display setting */

	/*
	 * Attach connectors to drm_atomic_state
	 */
	conn_state = FUNC3(state, connector);

	ret = FUNC1(conn_state);
	if (ret)
		goto err;

	/* Attach crtc to drm_atomic_state*/
	crtc_state = FUNC4(state, &disconnected_acrtc->base);

	ret = FUNC1(crtc_state);
	if (ret)
		goto err;

	/* force a restore */
	crtc_state->mode_changed = true;

	/* Attach plane to drm_atomic_state */
	plane_state = FUNC5(state, plane);

	ret = FUNC1(plane_state);
	if (ret)
		goto err;


	/* Call commit internally with the state we just constructed */
	ret = FUNC2(state);
	if (!ret)
		return 0;

err:
	FUNC0("Restoring old state failed with %i\n", ret);
	FUNC7(state);

	return ret;
}