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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;
struct mtk_drm_private {TYPE_1__ commit; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC2 (struct drm_atomic_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_drm_private*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_drm_private*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct drm_device *drm,
			     struct drm_atomic_state *state,
			     bool async)
{
	struct mtk_drm_private *private = drm->dev_private;
	int ret;

	ret = FUNC1(drm, state);
	if (ret)
		return ret;

	FUNC7(&private->commit.lock);
	FUNC4(&private->commit.work);

	ret = FUNC2(state, true);
	if (ret) {
		FUNC8(&private->commit.lock);
		FUNC0(drm, state);
		return ret;
	}

	FUNC3(state);
	if (async)
		FUNC6(private, state);
	else
		FUNC5(private, state);

	FUNC8(&private->commit.lock);

	return 0;
}