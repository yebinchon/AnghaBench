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
struct drm_atomic_state {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_COMMIT_ACTIVE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_atomic_state*) ; 

__attribute__((used)) static void FUNC6(struct drm_atomic_state *old_state)
{
	struct drm_device *dev = old_state->dev;

	FUNC2(dev, old_state);

	FUNC4(dev, old_state,
					DRM_PLANE_COMMIT_ACTIVE_ONLY);

	FUNC3(dev, old_state);

	FUNC5(dev, old_state);

	FUNC1(old_state);

	FUNC0(dev, old_state);
}