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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_disp {int dummy; } ;
struct nv50_disp_root_func {int dummy; } ;
struct nv50_disp_root {struct nv50_disp* disp; struct nv50_disp_root_func const* func; struct nvkm_object object; } ;
struct nv50_disp {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv50_disp_root* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nv50_disp* FUNC1 (struct nvkm_disp*) ; 
 int /*<<< orphan*/  nv50_disp_root_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 

int
FUNC3(const struct nv50_disp_root_func *func,
		    struct nvkm_disp *base, const struct nvkm_oclass *oclass,
		    void *data, u32 size, struct nvkm_object **pobject)
{
	struct nv50_disp *disp = FUNC1(base);
	struct nv50_disp_root *root;

	if (!(root = FUNC0(sizeof(*root), GFP_KERNEL)))
		return -ENOMEM;
	*pobject = &root->object;

	FUNC2(&nv50_disp_root_, oclass, &root->object);
	root->func = func;
	root->disp = disp;
	return 0;
}