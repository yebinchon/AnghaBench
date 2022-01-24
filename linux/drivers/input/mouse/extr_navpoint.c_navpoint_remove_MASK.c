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
struct ssp_device {int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct navpoint_platform_data {int /*<<< orphan*/  gpio; } ;
struct navpoint {int /*<<< orphan*/  input; struct ssp_device* ssp; } ;

/* Variables and functions */
 struct navpoint_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct navpoint*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct navpoint*) ; 
 struct navpoint* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssp_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct navpoint_platform_data *pdata =
					FUNC0(&pdev->dev);
	struct navpoint *navpoint = FUNC6(pdev);
	struct ssp_device *ssp = navpoint->ssp;

	FUNC1(ssp->irq, navpoint);

	FUNC4(navpoint->input);
	FUNC5(navpoint);

	FUNC7(ssp);

	if (FUNC3(pdata->gpio))
		FUNC2(pdata->gpio);

	return 0;
}