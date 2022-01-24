#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_gem_shmem_object {int madv; TYPE_3__* sgt; } ;
struct drm_gem_object {int /*<<< orphan*/  filp; int /*<<< orphan*/  vma_node; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* anon_inode; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_8__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_gem_shmem_object* FUNC11 (struct drm_gem_object*) ; 

void FUNC12(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct drm_gem_shmem_object *shmem = FUNC11(obj);

	FUNC0(!FUNC3(shmem));

	FUNC1(obj->dev->dev, shmem->sgt->sgl,
		     shmem->sgt->nents, DMA_BIDIRECTIONAL);
	FUNC9(shmem->sgt);
	FUNC8(shmem->sgt);
	shmem->sgt = NULL;

	FUNC4(shmem);

	shmem->madv = -1;

	FUNC5(&obj->vma_node, dev->anon_inode->i_mapping);
	FUNC2(obj);

	/* Our goal here is to return as much of the memory as
	 * is possible back to the system as we are called from OOM.
	 * To do this we must instruct the shmfs to drop all of its
	 * backing pages, *now*.
	 */
	FUNC10(FUNC6(obj->filp), 0, (loff_t)-1);

	FUNC7(FUNC6(obj->filp)->i_mapping,
			0, (loff_t)-1);
}