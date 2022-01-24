#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msm_gem_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  madv; } ;
struct drm_gem_object {int import_attach; int /*<<< orphan*/  filp; int /*<<< orphan*/  vma_node; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* anon_inode; int /*<<< orphan*/  struct_mutex; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  enum msm_gem_lock { ____Placeholder_msm_gem_lock } msm_gem_lock ;
struct TYPE_5__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __MSM_MADV_PURGED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_gem_object* FUNC13 (struct drm_gem_object*) ; 

void FUNC14(struct drm_gem_object *obj, enum msm_gem_lock subclass)
{
	struct drm_device *dev = obj->dev;
	struct msm_gem_object *msm_obj = FUNC13(obj);

	FUNC0(!FUNC7(&dev->struct_mutex));
	FUNC0(!FUNC5(msm_obj));
	FUNC0(obj->import_attach);

	FUNC8(&msm_obj->lock, subclass);

	FUNC10(obj);

	FUNC6(obj);

	FUNC11(obj);

	msm_obj->madv = __MSM_MADV_PURGED;

	FUNC2(&obj->vma_node, dev->anon_inode->i_mapping);
	FUNC1(obj);

	/* Our goal here is to return as much of the memory as
	 * is possible back to the system as we are called from OOM.
	 * To do this we must instruct the shmfs to drop all of its
	 * backing pages, *now*.
	 */
	FUNC12(FUNC3(obj->filp), 0, (loff_t)-1);

	FUNC4(FUNC3(obj->filp)->i_mapping,
			0, (loff_t)-1);

	FUNC9(&msm_obj->lock);
}