#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nv50_wndw {int /*<<< orphan*/  plane; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_10__ {int index; struct drm_crtc base; } ;
struct nv50_head {int /*<<< orphan*/  olut; TYPE_6__* func; TYPE_3__ base; } ;
struct nv50_disp {TYPE_5__* disp; TYPE_2__* core; } ;
struct TYPE_14__ {int /*<<< orphan*/  mmu; } ;
struct nouveau_drm {TYPE_7__ client; } ;
struct drm_device {int dummy; } ;
struct TYPE_13__ {scalar_t__ olut_set; } ;
struct TYPE_11__ {scalar_t__ oclass; } ;
struct TYPE_12__ {TYPE_4__ object; } ;
struct TYPE_9__ {TYPE_1__* func; } ;
struct TYPE_8__ {TYPE_6__* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 scalar_t__ GF110_DISP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GV100_DISP ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_crtc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_head*) ; 
 struct nv50_head* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct nouveau_drm*,int,struct nv50_wndw**) ; 
 int FUNC8 (struct nouveau_drm*,int,struct nv50_wndw**) ; 
 struct nv50_disp* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*) ; 
 int /*<<< orphan*/  nv50_head_func ; 
 int /*<<< orphan*/  nv50_head_help ; 
 int FUNC11 (struct nv50_disp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct nouveau_drm*,int,struct nv50_wndw**) ; 
 int FUNC13 (struct nouveau_drm*,int /*<<< orphan*/ ,int,struct nv50_wndw**) ; 

int
FUNC14(struct drm_device *dev, int index)
{
	struct nouveau_drm *drm = FUNC6(dev);
	struct nv50_disp *disp = FUNC9(dev);
	struct nv50_head *head;
	struct nv50_wndw *base, *ovly, *curs;
	struct drm_crtc *crtc;
	int ret;

	head = FUNC5(sizeof(*head), GFP_KERNEL);
	if (!head)
		return -ENOMEM;

	head->func = disp->core->func->head;
	head->base.index = index;

	if (disp->disp->object.oclass < GV100_DISP) {
		ret = FUNC7(drm, head->base.index, &base);
		ret = FUNC12(drm, head->base.index, &ovly);
	} else {
		ret = FUNC13(drm, DRM_PLANE_TYPE_PRIMARY,
				    head->base.index * 2 + 0, &base);
		ret = FUNC13(drm, DRM_PLANE_TYPE_OVERLAY,
				    head->base.index * 2 + 1, &ovly);
	}
	if (ret == 0)
		ret = FUNC8(drm, head->base.index, &curs);
	if (ret) {
		FUNC4(head);
		return ret;
	}

	crtc = &head->base.base;
	FUNC2(dev, crtc, &base->plane, &curs->plane,
				  &nv50_head_func, "head-%d", head->base.index);
	FUNC1(crtc, &nv50_head_help);
	FUNC3(crtc, 256);
	if (disp->disp->object.oclass >= GF110_DISP)
		FUNC0(crtc, 256, true, 256);
	else
		FUNC0(crtc, 0, false, 256);

	if (head->func->olut_set) {
		ret = FUNC11(disp, &drm->client.mmu, &head->olut);
		if (ret)
			goto out;
	}

out:
	if (ret)
		FUNC10(crtc);
	return ret;
}