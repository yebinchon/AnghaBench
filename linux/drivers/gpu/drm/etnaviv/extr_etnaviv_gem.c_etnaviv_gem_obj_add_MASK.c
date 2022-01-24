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
struct etnaviv_gem_object {int /*<<< orphan*/  gem_node; } ;
struct etnaviv_drm_private {int /*<<< orphan*/  gem_lock; int /*<<< orphan*/  gem_list; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct etnaviv_gem_object* FUNC3 (struct drm_gem_object*) ; 

void FUNC4(struct drm_device *dev, struct drm_gem_object *obj)
{
	struct etnaviv_drm_private *priv = dev->dev_private;
	struct etnaviv_gem_object *etnaviv_obj = FUNC3(obj);

	FUNC1(&priv->gem_lock);
	FUNC0(&etnaviv_obj->gem_node, &priv->gem_list);
	FUNC2(&priv->gem_lock);
}