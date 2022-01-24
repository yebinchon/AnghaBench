#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mipi_dbi_dev {int enabled; scalar_t__ regulator; scalar_t__ backlight; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct mipi_dbi_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mipi_dbi_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct drm_simple_display_pipe *pipe)
{
	struct mipi_dbi_dev *dbidev = FUNC2(pipe->crtc.dev);

	if (!dbidev->enabled)
		return;

	FUNC0("\n");

	dbidev->enabled = false;

	if (dbidev->backlight)
		FUNC1(dbidev->backlight);
	else
		FUNC3(dbidev);

	if (dbidev->regulator)
		FUNC4(dbidev->regulator);
}