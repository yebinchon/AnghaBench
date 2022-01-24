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
struct exynos_mic {int /*<<< orphan*/  dev; int /*<<< orphan*/  enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct exynos_mic* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  mic_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
			      void *data)
{
	struct exynos_mic *mic = FUNC0(dev);

	FUNC1(&mic_mutex);
	if (!mic->enabled)
		goto already_disabled;

	FUNC3(mic->dev);

already_disabled:
	FUNC2(&mic_mutex);
}