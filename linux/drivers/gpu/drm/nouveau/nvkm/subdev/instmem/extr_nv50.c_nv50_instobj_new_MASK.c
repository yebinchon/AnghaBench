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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {struct nvkm_memory memory; } ;
struct nv50_instobj {int /*<<< orphan*/  ram; int /*<<< orphan*/  lru; int /*<<< orphan*/  maps; struct nv50_instmem* imem; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct nv50_instmem {TYPE_2__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nv50_instobj* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct nv50_instmem* FUNC3 (struct nvkm_instmem*) ; 
 int /*<<< orphan*/  nv50_instobj_func ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct nvkm_instmem *base, u32 size, u32 align, bool zero,
		 struct nvkm_memory **pmemory)
{
	struct nv50_instmem *imem = FUNC3(base);
	struct nv50_instobj *iobj;
	struct nvkm_device *device = imem->base.subdev.device;
	u8 page = FUNC2(FUNC6(align), 12);

	if (!(iobj = FUNC1(sizeof(*iobj), GFP_KERNEL)))
		return -ENOMEM;
	*pmemory = &iobj->base.memory;

	FUNC4(&nv50_instobj_func, &imem->base, &iobj->base);
	iobj->imem = imem;
	FUNC7(&iobj->maps, 0);
	FUNC0(&iobj->lru);

	return FUNC5(device, 0, 1, page, size, true, true, &iobj->ram);
}