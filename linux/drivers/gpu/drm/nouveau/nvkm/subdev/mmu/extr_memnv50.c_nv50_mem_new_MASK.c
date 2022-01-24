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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nvkm_mmu {TYPE_1__ subdev; } ;
struct nvkm_memory {int dummy; } ;
struct nv50_mem_vn {int dummy; } ;
struct nv50_mem_v0 {int contig; scalar_t__ bankswz; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  NVKM_RAM_MM_NORMAL ; 
 int FUNC0 (int,void**,int /*<<< orphan*/ *,struct nv50_mem_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,void**,int /*<<< orphan*/ *,struct nv50_mem_vn) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct nvkm_memory**) ; 

int
FUNC3(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
	     void *argv, u32 argc, struct nvkm_memory **pmemory)
{
	union {
		struct nv50_mem_vn vn;
		struct nv50_mem_v0 v0;
	} *args = argv;
	int ret = -ENOSYS;
	bool contig;

	if (!(ret = FUNC0(ret, &argv, &argc, args->v0, 0, 0, false))) {
		type   = args->v0.bankswz ? 0x02 : 0x01;
		contig = args->v0.contig;
	} else
	if (!(ret = FUNC1(ret, &argv, &argc, args->vn))) {
		type   = 0x01;
		contig = false;
	} else
		return -ENOSYS;

	return FUNC2(mmu->subdev.device, NVKM_RAM_MM_NORMAL, type,
			    page, size, contig, false, pmemory);
}