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
struct ltdc_device {int /*<<< orphan*/  pixel_clk; } ;
struct drm_device {struct ltdc_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct drm_device *ddev)
{
	struct ltdc_device *ldev = ddev->dev_private;
	int ret;

	FUNC0("\n");

	ret = FUNC2(ldev->pixel_clk);
	if (ret) {
		FUNC1("failed to enable pixel clock (%d)\n", ret);
		return ret;
	}

	return 0;
}