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
struct msm_gem_object {int /*<<< orphan*/  mm_list; int /*<<< orphan*/ * gpu; } ;
struct msm_drm_private {int /*<<< orphan*/  inactive_list; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC4 (struct drm_gem_object*) ; 

void FUNC5(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_gem_object *msm_obj = FUNC4(obj);

	FUNC0(!FUNC3(&dev->struct_mutex));

	msm_obj->gpu = NULL;
	FUNC2(&msm_obj->mm_list);
	FUNC1(&msm_obj->mm_list, &priv->inactive_list);
}