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
union qxl_release_info {int id; } ;
struct qxl_surface_cmd {int dummy; } ;
struct qxl_release {scalar_t__ release_offset; struct qxl_bo* release_bo; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;
typedef  enum qxl_surface_cmd_type { ____Placeholder_qxl_surface_cmd_type } qxl_surface_cmd_type ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_RELEASE_SURFACE_CMD ; 
 int QXL_SURFACE_CMD_DESTROY ; 
 int FUNC0 (struct qxl_device*,int,int /*<<< orphan*/ ,struct qxl_release**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct qxl_device*,int /*<<< orphan*/ ,struct qxl_release**) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_release*,struct qxl_bo*) ; 
 union qxl_release_info* FUNC3 (struct qxl_device*,struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_device*,struct qxl_release*,union qxl_release_info*) ; 

int FUNC5(struct qxl_device *qdev,
				       enum qxl_surface_cmd_type surface_cmd_type,
				       struct qxl_release *create_rel,
				       struct qxl_release **release)
{
	if (surface_cmd_type == QXL_SURFACE_CMD_DESTROY && create_rel) {
		int idr_ret;
		struct qxl_bo *bo;
		union qxl_release_info *info;

		/* stash the release after the create command */
		idr_ret = FUNC1(qdev, QXL_RELEASE_SURFACE_CMD, release);
		if (idr_ret < 0)
			return idr_ret;
		bo = create_rel->release_bo;

		(*release)->release_bo = bo;
		(*release)->release_offset = create_rel->release_offset + 64;

		FUNC2(*release, bo);

		info = FUNC3(qdev, *release);
		info->id = idr_ret;
		FUNC4(qdev, *release, info);
		return 0;
	}

	return FUNC0(qdev, sizeof(struct qxl_surface_cmd),
					 QXL_RELEASE_SURFACE_CMD, release, NULL);
}