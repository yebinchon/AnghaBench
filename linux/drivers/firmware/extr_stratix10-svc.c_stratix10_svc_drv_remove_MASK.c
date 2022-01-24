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
struct stratix10_svc_controller {int /*<<< orphan*/  node; scalar_t__ genpool; int /*<<< orphan*/ * task; int /*<<< orphan*/  svc_fifo; } ;
struct stratix10_svc {int /*<<< orphan*/  stratix10_svc_rsu; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct stratix10_svc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct stratix10_svc_controller* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct stratix10_svc *svc = FUNC0(&pdev->dev);
	struct stratix10_svc_controller *ctrl = FUNC6(pdev);

	FUNC5(svc->stratix10_svc_rsu);

	FUNC2(&ctrl->svc_fifo);
	if (ctrl->task) {
		FUNC3(ctrl->task);
		ctrl->task = NULL;
	}
	if (ctrl->genpool)
		FUNC1(ctrl->genpool);
	FUNC4(&ctrl->node);

	return 0;
}