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
struct radeon_fbdev {struct radeon_device* rdev; } ;
struct radeon_device {TYPE_1__* ddev; } ;
struct fb_info {struct radeon_fbdev* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EACCES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct fb_info *info, int user)
{
	struct radeon_fbdev *rfbdev = info->par;
	struct radeon_device *rdev = rfbdev->rdev;
	int ret = FUNC0(rdev->ddev->dev);
	if (ret < 0 && ret != -EACCES) {
		FUNC1(rdev->ddev->dev);
		FUNC2(rdev->ddev->dev);
		return ret;
	}
	return 0;
}