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
struct msm_gem_vma {int /*<<< orphan*/  list; struct msm_gem_address_space* aspace; } ;
struct msm_gem_object {int /*<<< orphan*/  vmas; int /*<<< orphan*/  lock; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_gem_vma* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct msm_gem_vma* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static struct msm_gem_vma *FUNC6(struct drm_gem_object *obj,
		struct msm_gem_address_space *aspace)
{
	struct msm_gem_object *msm_obj = FUNC5(obj);
	struct msm_gem_vma *vma;

	FUNC1(!FUNC4(&msm_obj->lock));

	vma = FUNC2(sizeof(*vma), GFP_KERNEL);
	if (!vma)
		return FUNC0(-ENOMEM);

	vma->aspace = aspace;

	FUNC3(&vma->list, &msm_obj->vmas);

	return vma;
}