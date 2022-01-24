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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {int /*<<< orphan*/ * func; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct qxl_ttm_tt {struct ttm_tt ttm; struct qxl_device* qdev; } ;
struct qxl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qxl_ttm_tt*) ; 
 struct qxl_ttm_tt* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qxl_backend_func ; 
 struct qxl_device* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ttm_tt*,struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ttm_tt *FUNC4(struct ttm_buffer_object *bo,
					uint32_t page_flags)
{
	struct qxl_device *qdev;
	struct qxl_ttm_tt *gtt;

	qdev = FUNC2(bo->bdev);
	gtt = FUNC1(sizeof(struct qxl_ttm_tt), GFP_KERNEL);
	if (gtt == NULL)
		return NULL;
	gtt->ttm.func = &qxl_backend_func;
	gtt->qdev = qdev;
	if (FUNC3(&gtt->ttm, bo, page_flags)) {
		FUNC0(gtt);
		return NULL;
	}
	return &gtt->ttm;
}