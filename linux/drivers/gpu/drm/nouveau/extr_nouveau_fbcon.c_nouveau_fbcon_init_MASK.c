#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_7__* fbdev; } ;
struct nouveau_fbdev {TYPE_8__ helper; int /*<<< orphan*/  hotplug_lock; } ;
struct TYPE_15__ {int ram_size; } ;
struct TYPE_16__ {TYPE_3__ info; } ;
struct TYPE_17__ {TYPE_4__ device; } ;
struct nouveau_drm {TYPE_5__ client; int /*<<< orphan*/  fbcon_work; struct nouveau_fbdev* fbcon; } ;
struct TYPE_13__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {TYPE_2__* pdev; TYPE_1__ mode_config; } ;
struct TYPE_18__ {int buf_align; } ;
struct TYPE_19__ {TYPE_6__ pixmap; } ;
struct TYPE_14__ {int class; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PCI_CLASS_DISPLAY_VGA ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int FUNC3 (struct drm_device*,TYPE_8__*,int) ; 
 int FUNC4 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_fbdev*) ; 
 struct nouveau_fbdev* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC11 (struct drm_device*) ; 
 int nouveau_fbcon_bpp ; 
 int /*<<< orphan*/  nouveau_fbcon_helper_funcs ; 
 int /*<<< orphan*/  nouveau_fbcon_set_suspend_work ; 

int
FUNC12(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC11(dev);
	struct nouveau_fbdev *fbcon;
	int preferred_bpp = nouveau_fbcon_bpp;
	int ret;

	if (!dev->mode_config.num_crtc ||
	    (dev->pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
		return 0;

	fbcon = FUNC9(sizeof(struct nouveau_fbdev), GFP_KERNEL);
	if (!fbcon)
		return -ENOMEM;

	drm->fbcon = fbcon;
	FUNC0(&drm->fbcon_work, nouveau_fbcon_set_suspend_work);
	FUNC10(&fbcon->hotplug_lock);

	FUNC5(dev, &fbcon->helper, &nouveau_fbcon_helper_funcs);

	ret = FUNC3(dev, &fbcon->helper, 4);
	if (ret)
		goto free;

	ret = FUNC6(&fbcon->helper);
	if (ret)
		goto fini;

	if (preferred_bpp != 8 && preferred_bpp != 16 && preferred_bpp != 32) {
		if (drm->client.device.info.ram_size <= 32 * 1024 * 1024)
			preferred_bpp = 8;
		else
		if (drm->client.device.info.ram_size <= 64 * 1024 * 1024)
			preferred_bpp = 16;
		else
			preferred_bpp = 32;
	}

	/* disable all the possible outputs/crtcs before entering KMS mode */
	if (!FUNC1(dev))
		FUNC7(dev);

	ret = FUNC4(&fbcon->helper, preferred_bpp);
	if (ret)
		goto fini;

	if (fbcon->helper.fbdev)
		fbcon->helper.fbdev->pixmap.buf_align = 4;
	return 0;

fini:
	FUNC2(&fbcon->helper);
free:
	FUNC8(fbcon);
	return ret;
}