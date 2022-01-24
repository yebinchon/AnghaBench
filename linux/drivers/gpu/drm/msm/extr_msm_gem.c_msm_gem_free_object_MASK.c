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
struct msm_gem_object {int /*<<< orphan*/  freed; } ;
struct msm_drm_private {int /*<<< orphan*/  free_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  free_list; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC2 (struct drm_gem_object*) ; 

void FUNC3(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC2(obj);
	struct drm_device *dev = obj->dev;
	struct msm_drm_private *priv = dev->dev_private;

	if (FUNC0(&msm_obj->freed, &priv->free_list))
		FUNC1(priv->wq, &priv->free_work);
}