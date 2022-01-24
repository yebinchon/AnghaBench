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
struct exynos_mic {int enabled; int /*<<< orphan*/  dev; int /*<<< orphan*/  i80_mode; } ;
struct drm_bridge {struct exynos_mic* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mic_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_mic*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_mic*) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_mic*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_mic*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_mic*,int) ; 
 int FUNC6 (struct exynos_mic*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct drm_bridge *bridge)
{
	struct exynos_mic *mic = bridge->driver_private;
	int ret;

	FUNC7(&mic_mutex);
	if (mic->enabled)
		goto unlock;

	ret = FUNC9(mic->dev);
	if (ret < 0)
		goto unlock;

	FUNC3(mic, 1);

	ret = FUNC6(mic);
	if (ret) {
		FUNC0(mic->dev, "Failed to reset\n");
		goto turn_off;
	}

	if (!mic->i80_mode)
		FUNC4(mic);
	FUNC1(mic);
	FUNC2(mic);
	FUNC5(mic, 1);
	mic->enabled = 1;
	FUNC8(&mic_mutex);

	return;

turn_off:
	FUNC10(mic->dev);
unlock:
	FUNC8(&mic_mutex);
}