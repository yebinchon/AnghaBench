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
struct amdgpu_fbdev {int /*<<< orphan*/  helper; struct amdgpu_device* adev; } ;
struct TYPE_9__ {struct amdgpu_fbdev* rfbdev; int /*<<< orphan*/  mode_config_initialized; } ;
struct TYPE_8__ {int real_vram_size; } ;
struct amdgpu_device {TYPE_4__* ddev; TYPE_3__ mode_info; TYPE_2__ gmc; } ;
struct TYPE_7__ {int /*<<< orphan*/  connector_list; } ;
struct TYPE_10__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPUFB_CONN_LIMIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  amdgpu_fb_helper_funcs ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_fbdev*) ; 
 struct amdgpu_fbdev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct amdgpu_device *adev)
{
	struct amdgpu_fbdev *rfbdev;
	int bpp_sel = 32;
	int ret;

	/* don't init fbdev on hw without DCE */
	if (!adev->mode_info.mode_config_initialized)
		return 0;

	/* don't init fbdev if there are no connectors */
	if (FUNC8(&adev->ddev->mode_config.connector_list))
		return 0;

	/* select 8 bpp console on low vram cards */
	if (adev->gmc.real_vram_size <= (32*1024*1024))
		bpp_sel = 8;

	rfbdev = FUNC7(sizeof(struct amdgpu_fbdev), GFP_KERNEL);
	if (!rfbdev)
		return -ENOMEM;

	rfbdev->adev = adev;
	adev->mode_info.rfbdev = rfbdev;

	FUNC3(adev->ddev, &rfbdev->helper,
			&amdgpu_fb_helper_funcs);

	ret = FUNC1(adev->ddev, &rfbdev->helper,
				 AMDGPUFB_CONN_LIMIT);
	if (ret) {
		FUNC6(rfbdev);
		return ret;
	}

	FUNC4(&rfbdev->helper);

	/* disable all the possible outputs/crtcs before entering KMS mode */
	if (!FUNC0(adev))
		FUNC5(adev->ddev);

	FUNC2(&rfbdev->helper, bpp_sel);
	return 0;
}