#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int max_width; int max_height; int /*<<< orphan*/  fb_base; scalar_t__ min_height; scalar_t__ min_width; void* funcs; } ;
struct TYPE_8__ {TYPE_1__ mode_config; } ;
struct qxl_device {TYPE_2__ ddev; int /*<<< orphan*/  vram_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct qxl_device*) ; 
 int /*<<< orphan*/  qxl_mode_funcs ; 
 int qxl_num_crtc ; 

int FUNC8(struct qxl_device *qdev)
{
	int i;
	int ret;

	FUNC0(&qdev->ddev);

	ret = FUNC5(qdev);
	if (ret)
		return ret;

	qdev->ddev.mode_config.funcs = (void *)&qxl_mode_funcs;

	/* modes will be validated against the framebuffer size */
	qdev->ddev.mode_config.min_width = 0;
	qdev->ddev.mode_config.min_height = 0;
	qdev->ddev.mode_config.max_width = 8192;
	qdev->ddev.mode_config.max_height = 8192;

	qdev->ddev.mode_config.fb_base = qdev->vram_base;

	FUNC2(&qdev->ddev);
	FUNC7(qdev);

	for (i = 0 ; i < qxl_num_crtc; ++i) {
		FUNC3(&qdev->ddev, i);
		FUNC4(&qdev->ddev, i);
	}

	FUNC6(qdev);

	FUNC1(&qdev->ddev);
	return 0;
}