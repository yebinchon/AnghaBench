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
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 struct nouveau_display* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int) ; 

void
FUNC4(struct drm_device *dev, bool runtime)
{
	struct nouveau_display *disp = FUNC2(dev);

	FUNC3(dev, true, runtime);

	if (FUNC1(dev)) {
		if (disp->suspend) {
			FUNC0(dev, disp->suspend);
			disp->suspend = NULL;
		}
		return;
	}
}