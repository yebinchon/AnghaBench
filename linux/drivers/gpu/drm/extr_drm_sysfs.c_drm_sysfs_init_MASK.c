#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  attr; } ;
struct TYPE_9__ {int /*<<< orphan*/  devnode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_6__ class_attr_version ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* drm_class ; 
 int /*<<< orphan*/  drm_devnode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(void)
{
	int err;

	drm_class = FUNC2(THIS_MODULE, "drm");
	if (FUNC0(drm_class))
		return FUNC1(drm_class);

	err = FUNC3(drm_class, &class_attr_version.attr);
	if (err) {
		FUNC4(drm_class);
		drm_class = NULL;
		return err;
	}

	drm_class->devnode = drm_devnode;
	FUNC5(drm_class);
	return 0;
}