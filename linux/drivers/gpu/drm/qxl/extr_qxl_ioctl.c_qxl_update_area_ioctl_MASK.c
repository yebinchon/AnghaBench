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
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct qxl_rect {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int /*<<< orphan*/  surface_id; int /*<<< orphan*/  placement; int /*<<< orphan*/  tbo; int /*<<< orphan*/  type; int /*<<< orphan*/  pin_count; } ;
struct drm_qxl_update_area {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct qxl_bo* FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct qxl_device*,struct qxl_bo*) ; 
 int FUNC5 (struct qxl_bo*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_bo*) ; 
 int FUNC7 (struct qxl_device*,struct qxl_bo*,struct qxl_rect*) ; 
 int /*<<< orphan*/  FUNC8 (struct qxl_bo*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev, void *data,
				 struct drm_file *file)
{
	struct qxl_device *qdev = dev->dev_private;
	struct drm_qxl_update_area *update_area = data;
	struct qxl_rect area = {.left = update_area->left,
				.top = update_area->top,
				.right = update_area->right,
				.bottom = update_area->bottom};
	int ret;
	struct drm_gem_object *gobj = NULL;
	struct qxl_bo *qobj = NULL;
	struct ttm_operation_ctx ctx = { true, false };

	if (update_area->left >= update_area->right ||
	    update_area->top >= update_area->bottom)
		return -EINVAL;

	gobj = FUNC1(file, update_area->handle);
	if (gobj == NULL)
		return -ENOENT;

	qobj = FUNC3(gobj);

	ret = FUNC5(qobj, false);
	if (ret)
		goto out;

	if (!qobj->pin_count) {
		FUNC8(qobj, qobj->type, false);
		ret = FUNC9(&qobj->tbo, &qobj->placement, &ctx);
		if (FUNC10(ret))
			goto out;
	}

	ret = FUNC4(qdev, qobj);
	if (ret)
		goto out2;
	if (!qobj->surface_id)
		FUNC0("got update area for surface with no id %d\n", update_area->handle);
	ret = FUNC7(qdev, qobj, &area);

out2:
	FUNC6(qobj);

out:
	FUNC2(gobj);
	return ret;
}