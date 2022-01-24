#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uvmm ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {scalar_t__ size; scalar_t__ addr; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_1__ subdev; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {TYPE_2__* func; } ;
struct nv50_vmm_map_v0 {int /*<<< orphan*/  comp; int /*<<< orphan*/  kind; int /*<<< orphan*/  ro; } ;
struct nv50_mem_map_vn {int dummy; } ;
struct nv50_mem_map_v0 {int /*<<< orphan*/  comp; int /*<<< orphan*/  kind; int /*<<< orphan*/  ro; } ;
struct TYPE_4__ {scalar_t__ (* resource_addr ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int FUNC0 (int,void**,int /*<<< orphan*/ *,struct nv50_mem_map_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,void**,int /*<<< orphan*/ *,struct nv50_mem_map_vn) ; 
 struct nvkm_vmm* FUNC2 (struct nvkm_device*) ; 
 int FUNC3 (struct nvkm_memory*,int /*<<< orphan*/ ,struct nvkm_vmm*,struct nvkm_vma*,struct nv50_vmm_map_v0*,int) ; 
 scalar_t__ FUNC4 (struct nvkm_memory*) ; 
 int FUNC5 (struct nvkm_vmm*,int,scalar_t__,struct nvkm_vma**) ; 
 scalar_t__ FUNC6 (struct nvkm_device*,int) ; 

int
FUNC7(struct nvkm_mmu *mmu, struct nvkm_memory *memory, void *argv,
	     u32 argc, u64 *paddr, u64 *psize, struct nvkm_vma **pvma)
{
	struct nv50_vmm_map_v0 uvmm = {};
	union {
		struct nv50_mem_map_vn vn;
		struct nv50_mem_map_v0 v0;
	} *args = argv;
	struct nvkm_device *device = mmu->subdev.device;
	struct nvkm_vmm *bar = FUNC2(device);
	u64 size = FUNC4(memory);
	int ret = -ENOSYS;

	if (!(ret = FUNC0(ret, &argv, &argc, args->v0, 0, 0, false))) {
		uvmm.ro   = args->v0.ro;
		uvmm.kind = args->v0.kind;
		uvmm.comp = args->v0.comp;
	} else
	if (!(ret = FUNC1(ret, &argv, &argc, args->vn))) {
	} else
		return ret;

	ret = FUNC5(bar, 12, size, pvma);
	if (ret)
		return ret;

	*paddr = device->func->resource_addr(device, 1) + (*pvma)->addr;
	*psize = (*pvma)->size;
	return FUNC3(memory, 0, bar, *pvma, &uvmm, sizeof(uvmm));
}