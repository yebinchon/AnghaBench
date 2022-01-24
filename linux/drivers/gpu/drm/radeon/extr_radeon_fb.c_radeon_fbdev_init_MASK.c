#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct radeon_fbdev {int /*<<< orphan*/  helper; struct radeon_device* rdev; } ;
struct TYPE_9__ {struct radeon_fbdev* rfbdev; } ;
struct TYPE_8__ {int real_vram_size; } ;
struct radeon_device {TYPE_4__* ddev; TYPE_3__ mode_info; TYPE_2__ mc; } ;
struct TYPE_7__ {int /*<<< orphan*/  connector_list; } ;
struct TYPE_10__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RADEONFB_CONN_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_fbdev*) ; 
 struct radeon_fbdev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radeon_fb_helper_funcs ; 

int FUNC10(struct radeon_device *rdev)
{
	struct radeon_fbdev *rfbdev;
	int bpp_sel = 32;
	int ret;

	/* don't enable fbdev if no connectors */
	if (FUNC9(&rdev->ddev->mode_config.connector_list))
		return 0;

	/* select 8 bpp console on 8MB cards, or 16 bpp on RN50 or 32MB */
	if (rdev->mc.real_vram_size <= (8*1024*1024))
		bpp_sel = 8;
	else if (FUNC0(rdev) ||
		 rdev->mc.real_vram_size <= (32*1024*1024))
		bpp_sel = 16;

	rfbdev = FUNC8(sizeof(struct radeon_fbdev), GFP_KERNEL);
	if (!rfbdev)
		return -ENOMEM;

	rfbdev->rdev = rdev;
	rdev->mode_info.rfbdev = rfbdev;

	FUNC4(rdev->ddev, &rfbdev->helper,
			      &radeon_fb_helper_funcs);

	ret = FUNC2(rdev->ddev, &rfbdev->helper,
				 RADEONFB_CONN_LIMIT);
	if (ret)
		goto free;

	ret = FUNC5(&rfbdev->helper);
	if (ret)
		goto fini;

	/* disable all the possible outputs/crtcs before entering KMS mode */
	FUNC6(rdev->ddev);

	ret = FUNC3(&rfbdev->helper, bpp_sel);
	if (ret)
		goto fini;

	return 0;

fini:
	FUNC1(&rfbdev->helper);
free:
	FUNC7(rfbdev);
	return ret;
}