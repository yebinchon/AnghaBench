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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exynos_rng_alg ; 
 int /*<<< orphan*/ * exynos_rng_dev ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	FUNC0(&exynos_rng_alg);

	exynos_rng_dev = NULL;

	return 0;
}