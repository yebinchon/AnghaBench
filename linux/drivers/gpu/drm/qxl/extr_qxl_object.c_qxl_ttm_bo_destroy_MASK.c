#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ttm_buffer_object {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
struct qxl_device {TYPE_1__ gem; } ;
struct TYPE_8__ {TYPE_2__* dev; } ;
struct TYPE_7__ {TYPE_4__ base; } ;
struct qxl_bo {scalar_t__ map_count; TYPE_3__ tbo; int /*<<< orphan*/  list; } ;
struct TYPE_6__ {scalar_t__ dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*,struct qxl_bo*,int) ; 
 struct qxl_bo* FUNC7 (struct ttm_buffer_object*) ; 

__attribute__((used)) static void FUNC8(struct ttm_buffer_object *tbo)
{
	struct qxl_bo *bo;
	struct qxl_device *qdev;

	bo = FUNC7(tbo);
	qdev = (struct qxl_device *)bo->tbo.base.dev->dev_private;

	FUNC6(qdev, bo, false);
	FUNC0(bo->map_count > 0);
	FUNC4(&qdev->gem.mutex);
	FUNC3(&bo->list);
	FUNC5(&qdev->gem.mutex);
	FUNC1(&bo->tbo.base);
	FUNC2(bo);
}