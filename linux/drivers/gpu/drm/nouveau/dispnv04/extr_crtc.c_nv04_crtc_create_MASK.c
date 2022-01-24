#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nvbo; } ;
struct TYPE_4__ {scalar_t__ depth; } ;
struct nouveau_crtc {int index; TYPE_2__ cursor; int /*<<< orphan*/  base; int /*<<< orphan*/  restore; int /*<<< orphan*/  save; int /*<<< orphan*/  last_dpms; TYPE_1__ lut; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NV_DPMS_CLEARED ; 
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct nouveau_crtc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  nv04_crtc_funcs ; 
 int /*<<< orphan*/  nv04_crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_crtc*) ; 
 int /*<<< orphan*/  nv_crtc_restore ; 
 int /*<<< orphan*/  nv_crtc_save ; 

int
FUNC12(struct drm_device *dev, int crtc_num)
{
	struct nouveau_crtc *nv_crtc;
	int ret;

	nv_crtc = FUNC4(sizeof(*nv_crtc), GFP_KERNEL);
	if (!nv_crtc)
		return -ENOMEM;

	nv_crtc->lut.depth = 0;

	nv_crtc->index = crtc_num;
	nv_crtc->last_dpms = NV_DPMS_CLEARED;

	nv_crtc->save = nv_crtc_save;
	nv_crtc->restore = nv_crtc_restore;

	FUNC2(dev, &nv_crtc->base,
                                  FUNC0(dev), NULL,
                                  &nv04_crtc_funcs, NULL);
	FUNC1(&nv_crtc->base, &nv04_crtc_helper_funcs);
	FUNC3(&nv_crtc->base, 256);

	ret = FUNC6(&FUNC10(dev)->client, 64*64*4, 0x100,
			     TTM_PL_FLAG_VRAM, 0, 0x0000, NULL, NULL,
			     &nv_crtc->cursor.nvbo);
	if (!ret) {
		ret = FUNC7(nv_crtc->cursor.nvbo, TTM_PL_FLAG_VRAM, false);
		if (!ret) {
			ret = FUNC5(nv_crtc->cursor.nvbo);
			if (ret)
				FUNC9(nv_crtc->cursor.nvbo);
		}
		if (ret)
			FUNC8(NULL, &nv_crtc->cursor.nvbo);
	}

	FUNC11(nv_crtc);

	return 0;
}