#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* obj; } ;
struct psb_framebuffer {TYPE_1__ base; } ;
struct psb_fbdev {int /*<<< orphan*/  psb_fb_helper; struct psb_framebuffer pfb; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, struct psb_fbdev *fbdev)
{
	struct psb_framebuffer *psbfb = &fbdev->pfb;

	FUNC1(&fbdev->psb_fb_helper);

	FUNC0(&fbdev->psb_fb_helper);
	FUNC3(&psbfb->base);
	FUNC2(&psbfb->base);

	if (psbfb->base.obj[0])
		FUNC4(psbfb->base.obj[0]);
	return 0;
}