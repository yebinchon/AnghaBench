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
typedef  int u32 ;
struct nvkm_memory {int /*<<< orphan*/ * ptrs; } ;
struct nvkm_instmem {int dummy; } ;
struct TYPE_6__ {struct nvkm_memory memory; } ;
struct nv04_instobj {int /*<<< orphan*/  node; struct nv04_instmem* imem; TYPE_3__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct nv04_instmem {TYPE_2__ base; int /*<<< orphan*/  heap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv04_instobj* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nv04_instmem* FUNC3 (struct nvkm_instmem*) ; 
 int /*<<< orphan*/  nv04_instobj_func ; 
 int /*<<< orphan*/  nv04_instobj_ptrs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_instmem *base, u32 size, u32 align, bool zero,
		 struct nvkm_memory **pmemory)
{
	struct nv04_instmem *imem = FUNC3(base);
	struct nv04_instobj *iobj;
	int ret;

	if (!(iobj = FUNC0(sizeof(*iobj), GFP_KERNEL)))
		return -ENOMEM;
	*pmemory = &iobj->base.memory;

	FUNC4(&nv04_instobj_func, &imem->base, &iobj->base);
	iobj->base.memory.ptrs = &nv04_instobj_ptrs;
	iobj->imem = imem;

	FUNC1(&imem->base.subdev.mutex);
	ret = FUNC5(&imem->heap, 0, 1, size, size,
			   align ? align : 1, &iobj->node);
	FUNC2(&imem->base.subdev.mutex);
	return ret;
}