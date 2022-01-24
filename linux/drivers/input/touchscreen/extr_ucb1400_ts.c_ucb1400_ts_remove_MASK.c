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
struct ucb1400_ts {int /*<<< orphan*/  ts_idev; int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ucb1400_ts* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucb1400_ts*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ucb1400_ts *ucb = FUNC0(&pdev->dev);

	FUNC1(ucb->irq, ucb);
	FUNC2(ucb->ts_idev);

	return 0;
}