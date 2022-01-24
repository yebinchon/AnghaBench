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
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 

__attribute__((used)) static int FUNC2(struct drm_device *drm,
			      struct drm_atomic_state *state)
{
	int err;

	err = FUNC0(drm, state);
	if (err < 0)
		return err;

	return FUNC1(drm, state);
}