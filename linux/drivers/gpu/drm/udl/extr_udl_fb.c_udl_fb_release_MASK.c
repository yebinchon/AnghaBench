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
struct udl_fbdev {scalar_t__ fb_count; } ;
struct fb_info {int /*<<< orphan*/  node; TYPE_1__* fbops; int /*<<< orphan*/ * fbdefio; struct udl_fbdev* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  udl_fb_mmap ; 

__attribute__((used)) static int FUNC3(struct fb_info *info, int user)
{
	struct udl_fbdev *ufbdev = info->par;

	ufbdev->fb_count--;

#ifdef CONFIG_DRM_FBDEV_EMULATION
	if ((ufbdev->fb_count == 0) && (info->fbdefio)) {
		fb_deferred_io_cleanup(info);
		kfree(info->fbdefio);
		info->fbdefio = NULL;
		info->fbops->fb_mmap = udl_fb_mmap;
	}
#endif

	FUNC2("released /dev/fb%d user=%d count=%d\n",
		info->node, user, ufbdev->fb_count);

	return 0;
}