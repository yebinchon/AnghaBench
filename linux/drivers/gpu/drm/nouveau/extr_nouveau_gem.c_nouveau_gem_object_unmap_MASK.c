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
struct nouveau_vma {TYPE_1__* vmm; int /*<<< orphan*/  head; TYPE_2__* fence; } ;
struct TYPE_6__ {int /*<<< orphan*/  func; } ;
struct nouveau_gem_object_unmap {TYPE_3__ work; struct nouveau_vma* vma; } ;
struct nouveau_bo {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_5__ {struct dma_fence base; } ;
struct TYPE_4__ {int /*<<< orphan*/  cli; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dma_fence*,int,int) ; 
 struct nouveau_gem_object_unmap* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dma_fence*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  nouveau_gem_object_delete_work ; 

__attribute__((used)) static void
FUNC6(struct nouveau_bo *nvbo, struct nouveau_vma *vma)
{
	struct dma_fence *fence = vma->fence ? &vma->fence->base : NULL;
	struct nouveau_gem_object_unmap *work;

	FUNC3(&vma->head);

	if (!fence) {
		FUNC5(vma);
		return;
	}

	if (!(work = FUNC2(sizeof(*work), GFP_KERNEL))) {
		FUNC0(FUNC1(fence, false, 2 * HZ) <= 0);
		FUNC5(vma);
		return;
	}

	work->work.func = nouveau_gem_object_delete_work;
	work->vma = vma;
	FUNC4(vma->vmm->cli, fence, &work->work);
}