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
struct drm_mode_config {TYPE_1__* funcs; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {struct drm_atomic_state* (* atomic_state_alloc ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct drm_atomic_state* FUNC3 (struct drm_device*) ; 

struct drm_atomic_state *
FUNC4(struct drm_device *dev)
{
	struct drm_mode_config *config = &dev->mode_config;

	if (!config->funcs->atomic_state_alloc) {
		struct drm_atomic_state *state;

		state = FUNC2(sizeof(*state), GFP_KERNEL);
		if (!state)
			return NULL;
		if (FUNC0(dev, state) < 0) {
			FUNC1(state);
			return NULL;
		}
		return state;
	}

	return config->funcs->atomic_state_alloc(dev);
}