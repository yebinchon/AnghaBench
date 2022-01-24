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
struct qxl_device {TYPE_2__* primary_bo; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int is_primary; TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_IO_DESTROY_PRIMARY_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct qxl_device *qdev)
{
	FUNC1(qdev, 0, QXL_IO_DESTROY_PRIMARY_ASYNC);
	qdev->primary_bo->is_primary = false;
	FUNC0(&qdev->primary_bo->tbo.base);
	qdev->primary_bo = NULL;
}