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
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
struct nv04_vmm_map_vn {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm*,char*) ; 
 int FUNC1 (int,void**,int /*<<< orphan*/ *,struct nv04_vmm_map_vn) ; 

int
FUNC2(struct nvkm_vmm *vmm, void *argv, u32 argc,
	       struct nvkm_vmm_map *map)
{
	union {
		struct nv04_vmm_map_vn vn;
	} *args = argv;
	int ret = -ENOSYS;
	if ((ret = FUNC1(ret, &argv, &argc, args->vn)))
		FUNC0(vmm, "args");
	return ret;
}