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
struct omap_gem_object {int flags; } ;
struct omap_drm_usergart_entry {struct drm_gem_object* obj; } ;
struct omap_drm_private {TYPE_1__* usergart; } ;
struct drm_gem_object {TYPE_2__* dev; } ;
typedef  enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
struct TYPE_4__ {struct omap_drm_private* dev_private; } ;
struct TYPE_3__ {struct omap_drm_usergart_entry* entry; } ;

/* Variables and functions */
 int NUM_USERGART_ENTRIES ; 
 int OMAP_BO_TILED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int,struct omap_drm_usergart_entry*) ; 
 struct omap_gem_object* FUNC2 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC3(struct drm_gem_object *obj)
{
	struct omap_gem_object *omap_obj = FUNC2(obj);
	struct omap_drm_private *priv = obj->dev->dev_private;

	if (omap_obj->flags & OMAP_BO_TILED) {
		enum tiler_fmt fmt = FUNC0(omap_obj->flags);
		int i;

		for (i = 0; i < NUM_USERGART_ENTRIES; i++) {
			struct omap_drm_usergart_entry *entry =
				&priv->usergart[fmt].entry[i];

			if (entry->obj == obj)
				FUNC1(obj, fmt, entry);
		}
	}
}