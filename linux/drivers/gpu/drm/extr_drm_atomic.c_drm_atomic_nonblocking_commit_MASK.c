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
struct drm_mode_config {TYPE_1__* funcs; } ;
struct drm_atomic_state {TYPE_2__* dev; } ;
struct TYPE_4__ {struct drm_mode_config mode_config; } ;
struct TYPE_3__ {int (* atomic_commit ) (TYPE_2__*,struct drm_atomic_state*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_atomic_state*) ; 
 int FUNC2 (TYPE_2__*,struct drm_atomic_state*,int) ; 

int FUNC3(struct drm_atomic_state *state)
{
	struct drm_mode_config *config = &state->dev->mode_config;
	int ret;

	ret = FUNC1(state);
	if (ret)
		return ret;

	FUNC0("committing %p nonblocking\n", state);

	return config->funcs->atomic_commit(state->dev, state, true);
}