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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm {scalar_t__ null; int /*<<< orphan*/  nullp; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_mmu {struct nvkm_subdev subdev; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_mmu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct lock_class_key*,char const*,struct nvkm_vmm**) ; 
 int /*<<< orphan*/  nv44_vmm ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*) ; 

int
FUNC3(struct nvkm_mmu *mmu, bool managed, u64 addr, u64 size,
	     void *argv, u32 argc, struct lock_class_key *key, const char *name,
	     struct nvkm_vmm **pvmm)
{
	struct nvkm_subdev *subdev = &mmu->subdev;
	struct nvkm_vmm *vmm;
	int ret;

	ret = FUNC1(&nv44_vmm, mmu, 0, managed, addr, size,
			    argv, argc, key, name, &vmm);
	*pvmm = vmm;
	if (ret)
		return ret;

	vmm->nullp = FUNC0(subdev->device->dev, 16 * 1024,
					&vmm->null, GFP_KERNEL);
	if (!vmm->nullp) {
		FUNC2(subdev, "unable to allocate dummy pages\n");
		vmm->null = 0;
	}

	return 0;
}