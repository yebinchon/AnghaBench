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
typedef  void* uint32_t ;
struct qxl_device {int /*<<< orphan*/  surf_id_idr_lock; void* last_alloced_surf_id; int /*<<< orphan*/  surf_id_idr; TYPE_1__* rom; } ;
struct qxl_bo {void* surface_id; } ;
struct TYPE_2__ {void* n_surfaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct qxl_device *qdev,
		      struct qxl_bo *surf)
{
	uint32_t handle;
	int idr_ret;
	int count = 0;
again:
	FUNC1(GFP_ATOMIC);
	FUNC5(&qdev->surf_id_idr_lock);
	idr_ret = FUNC0(&qdev->surf_id_idr, NULL, 1, 0, GFP_NOWAIT);
	FUNC6(&qdev->surf_id_idr_lock);
	FUNC2();
	if (idr_ret < 0)
		return idr_ret;
	handle = idr_ret;

	if (handle >= qdev->rom->n_surfaces) {
		count++;
		FUNC5(&qdev->surf_id_idr_lock);
		FUNC3(&qdev->surf_id_idr, handle);
		FUNC6(&qdev->surf_id_idr_lock);
		FUNC4(qdev, 2);
		goto again;
	}
	surf->surface_id = handle;

	FUNC5(&qdev->surf_id_idr_lock);
	qdev->last_alloced_surf_id = handle;
	FUNC6(&qdev->surf_id_idr_lock);
	return 0;
}