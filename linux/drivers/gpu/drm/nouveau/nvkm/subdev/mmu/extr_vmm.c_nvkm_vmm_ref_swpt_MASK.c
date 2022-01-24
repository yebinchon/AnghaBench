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
typedef  size_t u32 ;
struct nvkm_vmm_pt {struct nvkm_vmm_pt** pde; int /*<<< orphan*/ * refs; } ;
struct nvkm_vmm_iter {int lvl; int /*<<< orphan*/  page; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm_pt*) ; 
 struct nvkm_vmm_pt* FUNC1 (struct nvkm_vmm_desc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm_iter*) ; 

__attribute__((used)) static bool
FUNC3(struct nvkm_vmm_iter *it, struct nvkm_vmm_pt *pgd, u32 pdei)
{
	const struct nvkm_vmm_desc *desc = &it->desc[it->lvl - 1];
	struct nvkm_vmm_pt *pgt = pgd->pde[pdei];

	pgt = FUNC1(desc, FUNC0(pgt), it->page);
	if (!pgt) {
		if (!pgd->refs[0])
			FUNC2(it);
		return false;
	}

	pgd->pde[pdei] = pgt;
	return true;
}