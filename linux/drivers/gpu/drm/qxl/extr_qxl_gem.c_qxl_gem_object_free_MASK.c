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
struct ttm_buffer_object {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {struct ttm_buffer_object tbo; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_private; } ;

/* Variables and functions */
 struct qxl_bo* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*,struct qxl_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 

void FUNC3(struct drm_gem_object *gobj)
{
	struct qxl_bo *qobj = FUNC0(gobj);
	struct qxl_device *qdev;
	struct ttm_buffer_object *tbo;

	qdev = (struct qxl_device *)gobj->dev->dev_private;

	FUNC1(qdev, qobj, false);

	tbo = &qobj->tbo;
	FUNC2(tbo);
}