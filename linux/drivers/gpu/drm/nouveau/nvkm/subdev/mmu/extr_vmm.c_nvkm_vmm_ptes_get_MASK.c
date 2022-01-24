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
typedef  unsigned long long u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long long FUNC0 (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  nvkm_vmm_ref_ptes ; 

__attribute__((used)) static int
FUNC2(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
		  u64 addr, u64 size)
{
	u64 fail = FUNC0(vmm, page, addr, size, "ref", true, false,
				 nvkm_vmm_ref_ptes, NULL, NULL, NULL);
	if (fail != ~0ULL) {
		if (fail != addr)
			FUNC1(vmm, page, addr, fail - addr);
		return -ENOMEM;
	}
	return 0;
}