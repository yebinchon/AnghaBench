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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm {int /*<<< orphan*/  mutex; } ;
struct nvkm_vma {int busy; scalar_t__ addr; scalar_t__ size; scalar_t__ refd; int /*<<< orphan*/  mapref; scalar_t__ memory; scalar_t__ mapped; int /*<<< orphan*/  user; } ;
struct TYPE_2__ {struct nvkm_client* client; } ;
struct nvkm_uvmm {struct nvkm_vmm* vmm; TYPE_1__ object; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_client {int /*<<< orphan*/  super; } ;
struct nvif_vmm_map_v0 {scalar_t__ addr; scalar_t__ size; scalar_t__ memory; scalar_t__ offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (struct nvkm_memory*) ; 
 scalar_t__ NVKM_VMA_PAGE_NONE ; 
 int FUNC1 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,void**,int /*<<< orphan*/ *,struct nvif_vmm_map_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct nvkm_memory*,scalar_t__,struct nvkm_vmm*,struct nvkm_vma*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_memory**) ; 
 struct nvkm_memory* FUNC8 (struct nvkm_client*,scalar_t__) ; 
 struct nvkm_vma* FUNC9 (struct nvkm_vmm*,scalar_t__) ; 
 struct nvkm_vma* FUNC10 (struct nvkm_vmm*,struct nvkm_vma*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_vmm*,struct nvkm_vma*) ; 

__attribute__((used)) static int
FUNC12(struct nvkm_uvmm *uvmm, void *argv, u32 argc)
{
	struct nvkm_client *client = uvmm->object.client;
	union {
		struct nvif_vmm_map_v0 v0;
	} *args = argv;
	u64 addr, size, handle, offset;
	struct nvkm_vmm *vmm = uvmm->vmm;
	struct nvkm_vma *vma;
	struct nvkm_memory *memory;
	int ret = -ENOSYS;

	if (!(ret = FUNC5(ret, &argv, &argc, args->v0, 0, 0, true))) {
		addr = args->v0.addr;
		size = args->v0.size;
		handle = args->v0.memory;
		offset = args->v0.offset;
	} else
		return ret;

	memory = FUNC8(client, handle);
	if (FUNC0(memory)) {
		FUNC2(vmm, "memory %016llx %ld\n", handle, FUNC1(memory));
		return FUNC1(memory);
	}

	FUNC3(&vmm->mutex);
	if (ret = -ENOENT, !(vma = FUNC9(vmm, addr))) {
		FUNC2(vmm, "lookup %016llx", addr);
		goto fail;
	}

	if (ret = -ENOENT, (!vma->user && !client->super) || vma->busy) {
		FUNC2(vmm, "denied %016llx: %d %d %d", addr,
			  vma->user, !client->super, vma->busy);
		goto fail;
	}

	if (ret = -EINVAL, vma->mapped && !vma->memory) {
		FUNC2(vmm, "pfnmap %016llx", addr);
		goto fail;
	}

	if (ret = -EINVAL, vma->addr != addr || vma->size != size) {
		if (addr + size > vma->addr + vma->size || vma->memory ||
		    (vma->refd == NVKM_VMA_PAGE_NONE && !vma->mapref)) {
			FUNC2(vmm, "split %d %d %d "
				       "%016llx %016llx %016llx %016llx",
				  !!vma->memory, vma->refd, vma->mapref,
				  addr, size, vma->addr, (u64)vma->size);
			goto fail;
		}

		vma = FUNC10(vmm, vma, addr, size);
		if (!vma) {
			ret = -ENOMEM;
			goto fail;
		}
	}
	vma->busy = true;
	FUNC4(&vmm->mutex);

	ret = FUNC6(memory, offset, vmm, vma, argv, argc);
	if (ret == 0) {
		/* Successful map will clear vma->busy. */
		FUNC7(&memory);
		return 0;
	}

	FUNC3(&vmm->mutex);
	vma->busy = false;
	FUNC11(vmm, vma);
fail:
	FUNC4(&vmm->mutex);
	FUNC7(&memory);
	return ret;
}