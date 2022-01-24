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
typedef  int /*<<< orphan*/  uint64_t ;
struct drm_property {struct drm_device* dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_object {scalar_t__ type; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {TYPE_2__* dev; struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_3__ {struct drm_property* dpms_property; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_OBJECT_CONNECTOR ; 
 int EDEADLK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_atomic_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_atomic_state*,struct drm_file*,struct drm_mode_object*,struct drm_property*,int /*<<< orphan*/ ) ; 
 struct drm_atomic_state* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_mode_object*) ; 

__attribute__((used)) static int FUNC11(struct drm_mode_object *obj,
			       struct drm_file *file_priv,
			       struct drm_property *prop,
			       uint64_t prop_value)
{
	struct drm_device *dev = prop->dev;
	struct drm_atomic_state *state;
	struct drm_modeset_acquire_ctx ctx;
	int ret;

	state = FUNC3(dev);
	if (!state)
		return -ENOMEM;

	FUNC7(&ctx, 0);
	state->acquire_ctx = &ctx;

retry:
	if (prop == state->dev->mode_config.dpms_property) {
		if (obj->type != DRM_MODE_OBJECT_CONNECTOR) {
			ret = -EINVAL;
			goto out;
		}

		ret = FUNC1(state,
						       FUNC10(obj),
						       prop_value);
	} else {
		ret = FUNC2(state, file_priv, obj, prop, prop_value);
		if (ret)
			goto out;
		ret = FUNC0(state);
	}
out:
	if (ret == -EDEADLK) {
		FUNC4(state);
		FUNC8(&ctx);
		goto retry;
	}

	FUNC5(state);

	FUNC9(&ctx);
	FUNC6(&ctx);

	return ret;
}