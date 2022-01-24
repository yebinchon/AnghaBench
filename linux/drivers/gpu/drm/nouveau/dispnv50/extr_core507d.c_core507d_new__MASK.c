#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nv50_disp_core_channel_dma_v0 {int dummy; } ;
struct nv50_disp {TYPE_4__* sync; TYPE_2__* disp; } ;
struct nv50_core_func {int dummy; } ;
struct nv50_core {int /*<<< orphan*/  chan; struct nv50_core_func const* func; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_1__ client; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_7__ {int /*<<< orphan*/  offset; } ;
struct TYPE_8__ {TYPE_3__ bo; } ;
struct TYPE_6__ {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ,int) ; 
 struct nv50_core* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct nv50_disp* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nv50_disp_core_channel_dma_v0*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(const struct nv50_core_func *func, struct nouveau_drm *drm,
	      s32 oclass, struct nv50_core **pcore)
{
	struct nv50_disp_core_channel_dma_v0 args = {};
	struct nv50_disp *disp = FUNC2(drm->dev);
	struct nv50_core *core;
	int ret;

	if (!(core = *pcore = FUNC1(sizeof(*core), GFP_KERNEL)))
		return -ENOMEM;
	core->func = func;

	ret = FUNC3(&drm->client.device, &disp->disp->object,
			       &oclass, 0, &args, sizeof(args),
			       disp->sync->bo.offset, &core->chan);
	if (ret) {
		FUNC0(drm, "core%04x allocation failed: %d\n", oclass, ret);
		return ret;
	}

	return 0;
}