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
struct tegra_dpaux {int /*<<< orphan*/  list; int /*<<< orphan*/  aux; int /*<<< orphan*/  work; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpaux_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tegra_dpaux* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_dpaux*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct tegra_dpaux *dpaux = FUNC5(pdev);

	FUNC0(&dpaux->work);

	/* make sure pads are powered down when not in use */
	FUNC8(dpaux);

	FUNC7(&pdev->dev);
	FUNC6(&pdev->dev);

	FUNC1(&dpaux->aux);

	FUNC3(&dpaux_lock);
	FUNC2(&dpaux->list);
	FUNC4(&dpaux_lock);

	return 0;
}