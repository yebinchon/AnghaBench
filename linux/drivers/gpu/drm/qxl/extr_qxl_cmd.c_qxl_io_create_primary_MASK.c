#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qxl_surface_create {int /*<<< orphan*/  type; int /*<<< orphan*/  flags; struct qxl_device* mem; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct qxl_device {struct qxl_bo* primary_bo; TYPE_3__* ram_header; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct qxl_bo {int is_primary; TYPE_2__ tbo; TYPE_3__* kptr; TYPE_1__ surf; } ;
struct TYPE_6__ {struct qxl_surface_create create_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct qxl_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  QXL_IO_CREATE_PRIMARY_ASYNC ; 
 int /*<<< orphan*/  QXL_SURF_FLAG_KEEP_DATA ; 
 int /*<<< orphan*/  QXL_SURF_TYPE_PRIMARY ; 
 scalar_t__ FUNC1 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct qxl_device* FUNC3 (struct qxl_device*,struct qxl_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct qxl_device *qdev, struct qxl_bo *bo)
{
	struct qxl_surface_create *create;

	if (FUNC1(qdev->primary_bo))
		return;

	FUNC0("qdev %p, ram_header %p\n", qdev, qdev->ram_header);
	create = &qdev->ram_header->create_surface;
	create->format = bo->surf.format;
	create->width = bo->surf.width;
	create->height = bo->surf.height;
	create->stride = bo->surf.stride;
	create->mem = FUNC3(qdev, bo, 0);

	FUNC0("mem = %llx, from %p\n", create->mem, bo->kptr);

	create->flags = QXL_SURF_FLAG_KEEP_DATA;
	create->type = QXL_SURF_TYPE_PRIMARY;

	FUNC4(qdev, 0, QXL_IO_CREATE_PRIMARY_ASYNC);
	qdev->primary_bo = bo;
	qdev->primary_bo->is_primary = true;
	FUNC2(&qdev->primary_bo->tbo.base);
}