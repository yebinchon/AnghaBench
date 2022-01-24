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
struct TYPE_4__ {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  paddr; } ;
struct vc4_bo {scalar_t__ madv; TYPE_2__ base; int /*<<< orphan*/  madv_lock; } ;
struct drm_gem_object {int /*<<< orphan*/  size; int /*<<< orphan*/  vma_node; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* anon_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 scalar_t__ VC4_MADV_DONTNEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ __VC4_MADV_PURGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vc4_bo* FUNC4 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC5(struct drm_gem_object *obj)
{
	struct vc4_bo *bo = FUNC4(obj);
	struct drm_device *dev = obj->dev;

	FUNC0(!FUNC3(&bo->madv_lock));
	FUNC0(bo->madv != VC4_MADV_DONTNEED);

	FUNC2(&obj->vma_node, dev->anon_inode->i_mapping);

	FUNC1(dev->dev, obj->size, bo->base.vaddr, bo->base.paddr);
	bo->base.vaddr = NULL;
	bo->madv = __VC4_MADV_PURGED;
}