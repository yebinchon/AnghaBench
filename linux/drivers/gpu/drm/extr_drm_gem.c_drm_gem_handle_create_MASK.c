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
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct drm_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  object_name_lock; } ;

/* Variables and functions */
 int FUNC0 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct drm_file *file_priv,
			  struct drm_gem_object *obj,
			  u32 *handlep)
{
	FUNC1(&obj->dev->object_name_lock);

	return FUNC0(file_priv, obj, handlep);
}