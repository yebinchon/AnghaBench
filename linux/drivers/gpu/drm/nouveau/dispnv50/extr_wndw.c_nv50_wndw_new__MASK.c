#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nvif_mmu {int dummy; } ;
struct nv50_wndw_func {scalar_t__ blend_set; scalar_t__ ilut; } ;
struct TYPE_12__ {int /*<<< orphan*/  func; } ;
struct TYPE_11__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  user; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct TYPE_8__ {int type; scalar_t__ data; } ;
struct nv50_wndw {int id; int /*<<< orphan*/  plane; struct nv50_wndw_func const* func; TYPE_6__ notify; int /*<<< orphan*/  ilut; TYPE_5__ ctxdma; TYPE_4__ wndw; TYPE_2__ interlock; } ;
struct nv50_disp {int dummy; } ;
struct TYPE_7__ {struct nvif_mmu mmu; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_device {int dummy; } ;
typedef  enum nv50_disp_interlock_type { ____Placeholder_nv50_disp_interlock_type } nv50_disp_interlock_type ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_COVERAGE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_PIXEL_NONE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_PREMULTI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__ const*,int,int /*<<< orphan*/ *,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv50_wndw*) ; 
 struct nv50_wndw* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC10 (struct drm_device*) ; 
 struct nv50_disp* FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct nv50_disp*,struct nvif_mmu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv50_wndw ; 
 int /*<<< orphan*/  nv50_wndw_helper ; 
 int /*<<< orphan*/  nv50_wndw_notify ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(const struct nv50_wndw_func *func, struct drm_device *dev,
	       enum drm_plane_type type, const char *name, int index,
	       const u32 *format, u32 heads,
	       enum nv50_disp_interlock_type interlock_type, u32 interlock_data,
	       struct nv50_wndw **pwndw)
{
	struct nouveau_drm *drm = FUNC10(dev);
	struct nvif_mmu *mmu = &drm->client.mmu;
	struct nv50_disp *disp = FUNC11(dev);
	struct nv50_wndw *wndw;
	int nformat;
	int ret;

	if (!(wndw = *pwndw = FUNC9(sizeof(*wndw), GFP_KERNEL)))
		return -ENOMEM;
	wndw->func = func;
	wndw->id = index;
	wndw->interlock.type = interlock_type;
	wndw->interlock.data = interlock_data;

	wndw->ctxdma.parent = &wndw->wndw.base.user;
	FUNC1(&wndw->ctxdma.list);

	for (nformat = 0; format[nformat]; nformat++);

	ret = FUNC7(dev, &wndw->plane, heads, &nv50_wndw,
				       format, nformat, NULL,
				       type, "%s-%d", name, index);
	if (ret) {
		FUNC8(*pwndw);
		*pwndw = NULL;
		return ret;
	}

	FUNC6(&wndw->plane, &nv50_wndw_helper);

	if (wndw->func->ilut) {
		ret = FUNC12(disp, mmu, &wndw->ilut);
		if (ret)
			return ret;
	}

	wndw->notify.func = nv50_wndw_notify;

	if (wndw->func->blend_set) {
		ret = FUNC5(&wndw->plane,
				FUNC13(&wndw->plane), 0, 254);
		if (ret)
			return ret;

		ret = FUNC2(&wndw->plane);
		if (ret)
			return ret;

		ret = FUNC3(&wndw->plane,
				FUNC0(DRM_MODE_BLEND_PIXEL_NONE) |
				FUNC0(DRM_MODE_BLEND_PREMULTI) |
				FUNC0(DRM_MODE_BLEND_COVERAGE));
		if (ret)
			return ret;
	} else {
		ret = FUNC4(&wndw->plane,
				FUNC13(&wndw->plane));
		if (ret)
			return ret;
	}

	return 0;
}