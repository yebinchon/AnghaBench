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
struct tegra_drm {scalar_t__ hub; } ;
struct drm_device {struct tegra_drm* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_atomic_state*) ; 

__attribute__((used)) static void FUNC8(struct drm_atomic_state *old_state)
{
	struct drm_device *drm = old_state->dev;
	struct tegra_drm *tegra = drm->dev_private;

	if (tegra->hub) {
		FUNC2(drm, old_state);
		FUNC7(drm, old_state);
		FUNC4(drm, old_state, 0);
		FUNC3(drm, old_state);
		FUNC1(old_state);
		FUNC6(drm, old_state);
		FUNC0(drm, old_state);
	} else {
		FUNC5(old_state);
	}
}