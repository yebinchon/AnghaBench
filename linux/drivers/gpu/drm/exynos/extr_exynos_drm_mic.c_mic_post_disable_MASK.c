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
struct exynos_mic {scalar_t__ enabled; int /*<<< orphan*/  dev; } ;
struct drm_bridge {struct exynos_mic* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  mic_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_mic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct exynos_mic *mic = bridge->driver_private;

	FUNC1(&mic_mutex);
	if (!mic->enabled)
		goto already_disabled;

	FUNC0(mic, 0);

	FUNC3(mic->dev);
	mic->enabled = 0;

already_disabled:
	FUNC2(&mic_mutex);
}