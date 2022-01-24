#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  encoder; } ;
struct shmob_drm_device {TYPE_3__* ddev; TYPE_1__ encoder; } ;
struct TYPE_7__ {int max_width; int max_height; int /*<<< orphan*/ * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct TYPE_8__ {TYPE_2__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct shmob_drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct shmob_drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct shmob_drm_device*) ; 
 int /*<<< orphan*/  shmob_drm_mode_config_funcs ; 

int FUNC6(struct shmob_drm_device *sdev)
{
	FUNC2(sdev->ddev);

	FUNC4(sdev);
	FUNC5(sdev);
	FUNC3(sdev, &sdev->encoder.encoder);

	FUNC1(sdev->ddev);

	sdev->ddev->mode_config.min_width = 0;
	sdev->ddev->mode_config.min_height = 0;
	sdev->ddev->mode_config.max_width = 4095;
	sdev->ddev->mode_config.max_height = 4095;
	sdev->ddev->mode_config.funcs = &shmob_drm_mode_config_funcs;

	FUNC0(sdev->ddev);

	return 0;
}