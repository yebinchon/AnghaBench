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
struct drm_mode_object {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  object_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct drm_mode_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev,
			      struct drm_mode_object *obj)
{
	FUNC1(&dev->mode_config.idr_mutex);
	FUNC0(&dev->mode_config.object_idr, obj, obj->id);
	FUNC2(&dev->mode_config.idr_mutex);
}