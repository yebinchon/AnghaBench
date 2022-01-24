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
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct TYPE_6__ {TYPE_2__ surface_create; } ;
struct qxl_surface_cmd {int /*<<< orphan*/  release_info; int /*<<< orphan*/  surface_id; TYPE_3__ u; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct qxl_release {int dummy; } ;
struct qxl_device {int /*<<< orphan*/  surf_id_idr_lock; int /*<<< orphan*/  surf_id_idr; } ;
struct TYPE_4__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct qxl_bo {int hw_surf_alloc; int /*<<< orphan*/  surface_id; struct qxl_release* surf_create; TYPE_1__ surf; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_CMD_SURFACE ; 
 int /*<<< orphan*/  QXL_SURFACE_CMD_CREATE ; 
 int /*<<< orphan*/  QXL_SURF_FLAG_KEEP_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct qxl_bo*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qxl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qxl_release**) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_device*,struct qxl_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_release*) ; 
 scalar_t__ FUNC5 (struct qxl_device*,struct qxl_release*) ; 
 int FUNC6 (struct qxl_release*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct qxl_device *qdev,
			 struct qxl_bo *surf)
{
	struct qxl_surface_cmd *cmd;
	struct qxl_release *release;
	int ret;

	if (surf->hw_surf_alloc)
		return 0;

	ret = FUNC1(qdev, QXL_SURFACE_CMD_CREATE,
						 NULL,
						 &release);
	if (ret)
		return ret;

	ret = FUNC6(release, true);
	if (ret)
		return ret;

	cmd = (struct qxl_surface_cmd *)FUNC5(qdev, release);
	cmd->type = QXL_SURFACE_CMD_CREATE;
	cmd->flags = QXL_SURF_FLAG_KEEP_DATA;
	cmd->u.surface_create.format = surf->surf.format;
	cmd->u.surface_create.width = surf->surf.width;
	cmd->u.surface_create.height = surf->surf.height;
	cmd->u.surface_create.stride = surf->surf.stride;
	cmd->u.surface_create.data = FUNC2(qdev, surf, 0);
	cmd->surface_id = surf->surface_id;
	FUNC7(qdev, release, &cmd->release_info);

	surf->surf_create = release;

	/* no need to add a release to the fence for this surface bo,
	   since it is only released when we ask to destroy the surface
	   and it would never signal otherwise */
	FUNC3(qdev, release, QXL_CMD_SURFACE, false);
	FUNC4(release);

	surf->hw_surf_alloc = true;
	FUNC8(&qdev->surf_id_idr_lock);
	FUNC0(&qdev->surf_id_idr, surf, surf->surface_id);
	FUNC9(&qdev->surf_id_idr_lock);
	return 0;
}