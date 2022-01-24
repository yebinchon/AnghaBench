#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_disp_func {int /*<<< orphan*/  uevent; int /*<<< orphan*/  super; } ;
struct nv50_disp {int /*<<< orphan*/  uevent; int /*<<< orphan*/  chan; int /*<<< orphan*/  supervisor; int /*<<< orphan*/  wq; struct nvkm_disp base; struct nv50_disp_func const* func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct nv50_disp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_disp_ ; 
 int FUNC4 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_disp*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(const struct nv50_disp_func *func, struct nvkm_device *device,
	       int index, struct nvkm_disp **pdisp)
{
	struct nv50_disp *disp;
	int ret;

	if (!(disp = FUNC3(sizeof(*disp), GFP_KERNEL)))
		return -ENOMEM;
	disp->func = func;
	*pdisp = &disp->base;

	ret = FUNC4(&nv50_disp_, device, index, &disp->base);
	if (ret)
		return ret;

	disp->wq = FUNC2("nvkm-disp");
	if (!disp->wq)
		return -ENOMEM;

	FUNC1(&disp->supervisor, func->super);

	return FUNC5(func->uevent, 1, FUNC0(disp->chan),
			       &disp->uevent);
}