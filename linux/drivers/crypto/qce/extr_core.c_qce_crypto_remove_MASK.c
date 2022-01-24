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
struct qce_device {int /*<<< orphan*/  core; int /*<<< orphan*/  iface; int /*<<< orphan*/  bus; int /*<<< orphan*/  dma; int /*<<< orphan*/  done_tasklet; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qce_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qce_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct qce_device *qce = FUNC1(pdev);

	FUNC4(&qce->done_tasklet);
	FUNC3(qce);
	FUNC2(&qce->dma);
	FUNC0(qce->bus);
	FUNC0(qce->iface);
	FUNC0(qce->core);
	return 0;
}