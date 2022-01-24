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
struct rk3399_dmcfreq {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfreq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct rk3399_dmcfreq* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rk3399_dmcfreq *dmcfreq = FUNC0(&pdev->dev);

	/*
	 * Before remove the opp table we need to unregister the opp notifier.
	 */
	FUNC2(dmcfreq->dev, dmcfreq->devfreq);
	FUNC1(dmcfreq->dev);

	return 0;
}