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
struct drm_gem_object {TYPE_1__* import_attach; struct drm_device* dev; } ;
struct msm_gem_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  sgt; scalar_t__ pages; scalar_t__ vaddr; int /*<<< orphan*/  mm_list; struct drm_gem_object base; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct msm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC14(struct msm_gem_object *msm_obj)
{
	struct drm_gem_object *obj = &msm_obj->base;
	struct drm_device *dev = obj->dev;

	FUNC0(!FUNC9(&dev->struct_mutex));

	/* object should not be on active list: */
	FUNC0(FUNC4(msm_obj));

	FUNC7(&msm_obj->mm_list);

	FUNC10(&msm_obj->lock);

	FUNC12(obj);

	if (obj->import_attach) {
		if (msm_obj->vaddr)
			FUNC1(obj->import_attach->dmabuf, msm_obj->vaddr);

		/* Don't drop the pages for imported dmabuf, as they are not
		 * ours, just free the array we allocated:
		 */
		if (msm_obj->pages)
			FUNC6(msm_obj->pages);

		FUNC3(obj, msm_obj->sgt);
	} else {
		FUNC8(obj);
		FUNC13(obj);
	}

	FUNC2(obj);

	FUNC11(&msm_obj->lock);
	FUNC5(msm_obj);
}