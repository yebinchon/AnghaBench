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
struct qxl_release {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_cursor_cmd {int /*<<< orphan*/  release_info; int /*<<< orphan*/  type; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {struct qxl_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_CMD_CURSOR ; 
 int /*<<< orphan*/  QXL_CURSOR_HIDE ; 
 int /*<<< orphan*/  QXL_RELEASE_CURSOR_CMD ; 
 int FUNC0 (struct qxl_device*,int,int /*<<< orphan*/ ,struct qxl_release**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_device*,struct qxl_release*) ; 
 scalar_t__ FUNC4 (struct qxl_device*,struct qxl_release*) ; 
 int FUNC5 (struct qxl_release*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_plane *plane,
				      struct drm_plane_state *old_state)
{
	struct qxl_device *qdev = plane->dev->dev_private;
	struct qxl_release *release;
	struct qxl_cursor_cmd *cmd;
	int ret;

	ret = FUNC0(qdev, sizeof(*cmd),
					 QXL_RELEASE_CURSOR_CMD,
					 &release, NULL);
	if (ret)
		return;

	ret = FUNC5(release, true);
	if (ret) {
		FUNC3(qdev, release);
		return;
	}

	cmd = (struct qxl_cursor_cmd *)FUNC4(qdev, release);
	cmd->type = QXL_CURSOR_HIDE;
	FUNC6(qdev, release, &cmd->release_info);

	FUNC1(qdev, release, QXL_CMD_CURSOR, false);
	FUNC2(release);
}