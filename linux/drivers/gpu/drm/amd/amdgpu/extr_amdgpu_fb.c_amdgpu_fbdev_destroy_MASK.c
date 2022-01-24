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
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** obj; } ;
struct amdgpu_framebuffer {TYPE_1__ base; } ;
struct amdgpu_fbdev {int /*<<< orphan*/  helper; struct amdgpu_framebuffer rfb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, struct amdgpu_fbdev *rfbdev)
{
	struct amdgpu_framebuffer *rfb = &rfbdev->rfb;

	FUNC2(&rfbdev->helper);

	if (rfb->base.obj[0]) {
		FUNC0(rfb->base.obj[0]);
		rfb->base.obj[0] = NULL;
		FUNC4(&rfb->base);
		FUNC3(&rfb->base);
	}
	FUNC1(&rfbdev->helper);

	return 0;
}