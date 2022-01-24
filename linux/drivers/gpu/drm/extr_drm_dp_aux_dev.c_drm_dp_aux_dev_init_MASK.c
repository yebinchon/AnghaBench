#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev_groups; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  auxdev_fops ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int drm_dev_major ; 
 TYPE_1__* drm_dp_aux_dev_class ; 
 int /*<<< orphan*/  drm_dp_aux_groups ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	int res;

	drm_dp_aux_dev_class = FUNC2(THIS_MODULE, "drm_dp_aux_dev");
	if (FUNC0(drm_dp_aux_dev_class)) {
		return FUNC1(drm_dp_aux_dev_class);
	}
	drm_dp_aux_dev_class->dev_groups = drm_dp_aux_groups;

	res = FUNC4(0, "aux", &auxdev_fops);
	if (res < 0)
		goto out;
	drm_dev_major = res;

	return 0;
out:
	FUNC3(drm_dp_aux_dev_class);
	return res;
}