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
typedef  int /*<<< orphan*/  u64 ;
struct nvkm_vmm {int /*<<< orphan*/  list; } ;
struct nvkm_vma {int mapref; int sparse; int used; int user; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nvkm_vma* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_vmm *vmm, u64 addr, u64 size)
{
	struct nvkm_vma *vma;
	if (!(vma = FUNC1(addr, size)))
		return -ENOMEM;
	vma->mapref = true;
	vma->sparse = false;
	vma->used = true;
	vma->user = true;
	FUNC2(vmm, vma);
	FUNC0(&vma->head, &vmm->list);
	return 0;
}