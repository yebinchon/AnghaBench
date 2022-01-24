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
struct thermal_cooling_device {struct etnaviv_gpu* devdata; } ;
struct etnaviv_gpu {unsigned long freq_scale; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct thermal_cooling_device *cdev,
				  unsigned long state)
{
	struct etnaviv_gpu *gpu = cdev->devdata;

	FUNC1(&gpu->lock);
	gpu->freq_scale = state;
	if (!FUNC3(gpu->dev))
		FUNC0(gpu);
	FUNC2(&gpu->lock);

	return 0;
}