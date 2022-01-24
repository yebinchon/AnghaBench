#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvkm_oclass {struct nvkm_disp_oclass const* engn; int /*<<< orphan*/  base; int /*<<< orphan*/  engine; } ;
struct nvkm_disp_oclass {int /*<<< orphan*/  base; } ;
struct nvkm_disp {TYPE_1__* func; } ;
struct nvkm_device_oclass {int dummy; } ;
struct TYPE_2__ {struct nvkm_disp_oclass* (* root ) (struct nvkm_disp*) ;} ;

/* Variables and functions */
 struct nvkm_disp* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nvkm_device_oclass nvkm_disp_sclass ; 
 struct nvkm_disp_oclass* FUNC1 (struct nvkm_disp*) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_oclass *oclass, int index,
		    const struct nvkm_device_oclass **class)
{
	struct nvkm_disp *disp = FUNC0(oclass->engine);
	if (index == 0) {
		const struct nvkm_disp_oclass *root = disp->func->root(disp);
		oclass->base = root->base;
		oclass->engn = root;
		*class = &nvkm_disp_sclass;
		return 0;
	}
	return 1;
}