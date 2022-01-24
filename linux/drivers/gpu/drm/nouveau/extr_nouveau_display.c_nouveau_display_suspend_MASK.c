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
struct nouveau_display {int /*<<< orphan*/ * suspend; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 struct nouveau_display* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,int) ; 

int
FUNC6(struct drm_device *dev, bool runtime)
{
	struct nouveau_display *disp = FUNC4(dev);

	if (FUNC3(dev)) {
		if (!runtime) {
			disp->suspend = FUNC2(dev);
			if (FUNC0(disp->suspend)) {
				int ret = FUNC1(disp->suspend);
				disp->suspend = NULL;
				return ret;
			}
		}
	}

	FUNC5(dev, true, runtime);
	return 0;
}