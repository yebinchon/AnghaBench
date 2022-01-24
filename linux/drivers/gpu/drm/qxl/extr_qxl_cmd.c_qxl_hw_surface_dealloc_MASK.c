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
struct qxl_surface_cmd {int surface_id; int /*<<< orphan*/  release_info; int /*<<< orphan*/  type; } ;
struct qxl_release {int surface_release_id; } ;
struct qxl_device {int /*<<< orphan*/  surf_id_idr_lock; int /*<<< orphan*/  surf_id_idr; } ;
struct qxl_bo {int hw_surf_alloc; int surface_id; int /*<<< orphan*/ * surf_create; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_CMD_SURFACE ; 
 int /*<<< orphan*/  QXL_SURFACE_CMD_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct qxl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qxl_release**) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_release*) ; 
 scalar_t__ FUNC4 (struct qxl_device*,struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct qxl_device *qdev,
			   struct qxl_bo *surf)
{
	struct qxl_surface_cmd *cmd;
	struct qxl_release *release;
	int ret;
	int id;

	if (!surf->hw_surf_alloc)
		return 0;

	ret = FUNC1(qdev, QXL_SURFACE_CMD_DESTROY,
						 surf->surf_create,
						 &release);
	if (ret)
		return ret;

	surf->surf_create = NULL;
	/* remove the surface from the idr, but not the surface id yet */
	FUNC6(&qdev->surf_id_idr_lock);
	FUNC0(&qdev->surf_id_idr, NULL, surf->surface_id);
	FUNC7(&qdev->surf_id_idr_lock);
	surf->hw_surf_alloc = false;

	id = surf->surface_id;
	surf->surface_id = 0;

	release->surface_release_id = id;
	cmd = (struct qxl_surface_cmd *)FUNC4(qdev, release);
	cmd->type = QXL_SURFACE_CMD_DESTROY;
	cmd->surface_id = id;
	FUNC5(qdev, release, &cmd->release_info);

	FUNC2(qdev, release, QXL_CMD_SURFACE, false);

	FUNC3(release);

	return 0;
}