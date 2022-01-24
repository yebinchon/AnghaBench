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
struct TYPE_5__ {int /*<<< orphan*/  user; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct nv50_wndw {struct nv50_wimm_func const* immd; TYPE_3__ wimm; int /*<<< orphan*/  id; } ;
struct nv50_wimm_func {int dummy; } ;
struct nv50_disp_overlay_v0 {int /*<<< orphan*/  head; } ;
struct nv50_disp {TYPE_1__* disp; } ;
struct nouveau_drm {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_4__ {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ,int) ; 
 struct nv50_disp* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nv50_disp_overlay_v0*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const struct nv50_wimm_func *func, struct nouveau_drm *drm,
	       s32 oclass, struct nv50_wndw *wndw)
{
	struct nv50_disp_overlay_v0 args = {
		.head = wndw->id,
	};
	struct nv50_disp *disp = FUNC1(drm->dev);
	int ret;

	ret = FUNC2(&disp->disp->object, 0, oclass, &args,
			       sizeof(args), &wndw->wimm.base.user);
	if (ret) {
		FUNC0(drm, "oimm%04x allocation failed: %d\n", oclass, ret);
		return ret;
	}

	FUNC3(&wndw->wimm.base.user, NULL, 0);
	wndw->immd = func;
	return 0;
}