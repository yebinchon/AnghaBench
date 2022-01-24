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
struct msm_gem_object {int /*<<< orphan*/  pages; int /*<<< orphan*/  vram_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct msm_drm_private {TYPE_2__ vram; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC4 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC5(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC4(obj);
	struct msm_drm_private *priv = obj->dev->dev_private;

	FUNC2(&priv->vram.lock);
	FUNC0(msm_obj->vram_node);
	FUNC3(&priv->vram.lock);

	FUNC1(msm_obj->pages);
}