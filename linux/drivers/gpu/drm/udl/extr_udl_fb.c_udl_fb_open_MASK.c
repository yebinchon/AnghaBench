#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_3__ {TYPE_2__ base; } ;
struct udl_fbdev {int /*<<< orphan*/  fb_count; TYPE_1__ ufb; } ;
struct udl_device {int /*<<< orphan*/  drm; } ;
struct fb_info {int /*<<< orphan*/  node; struct fb_deferred_io* fbdefio; struct udl_fbdev* par; } ;
struct fb_deferred_io {int /*<<< orphan*/  deferred_io; int /*<<< orphan*/  delay; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFIO_WRITE_DELAY ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_fb_helper_deferred_io ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 scalar_t__ fb_defio ; 
 struct fb_deferred_io* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,struct fb_info*,int /*<<< orphan*/ ) ; 
 struct udl_device* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct fb_info *info, int user)
{
	struct udl_fbdev *ufbdev = info->par;
	struct drm_device *dev = ufbdev->ufb.base.dev;
	struct udl_device *udl = FUNC4(dev);

	/* If the USB device is gone, we don't accept new opens */
	if (FUNC0(&udl->drm))
		return -ENODEV;

	ufbdev->fb_count++;

#ifdef CONFIG_DRM_FBDEV_EMULATION
	if (fb_defio && (info->fbdefio == NULL)) {
		/* enable defio at last moment if not disabled by client */

		struct fb_deferred_io *fbdefio;

		fbdefio = kzalloc(sizeof(struct fb_deferred_io), GFP_KERNEL);

		if (fbdefio) {
			fbdefio->delay = DL_DEFIO_WRITE_DELAY;
			fbdefio->deferred_io = drm_fb_helper_deferred_io;
		}

		info->fbdefio = fbdefio;
		fb_deferred_io_init(info);
	}
#endif

	FUNC3("open /dev/fb%d user=%d fb_info=%p count=%d\n",
		  info->node, user, info, ufbdev->fb_count);

	return 0;
}