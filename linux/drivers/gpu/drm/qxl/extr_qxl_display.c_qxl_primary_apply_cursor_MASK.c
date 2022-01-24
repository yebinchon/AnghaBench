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
struct qxl_release {int dummy; } ;
struct qxl_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int visible; int /*<<< orphan*/  shape; TYPE_1__ position; } ;
struct TYPE_8__ {TYPE_3__ set; } ;
struct qxl_cursor_cmd {int /*<<< orphan*/  release_info; TYPE_4__ u; int /*<<< orphan*/  type; } ;
struct qxl_crtc {int /*<<< orphan*/  cursor_bo; } ;
struct drm_plane {TYPE_2__* state; struct drm_device* dev; } ;
struct drm_framebuffer {scalar_t__ hot_y; scalar_t__ hot_x; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct TYPE_6__ {scalar_t__ crtc_y; scalar_t__ crtc_x; int /*<<< orphan*/  crtc; struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_CMD_CURSOR ; 
 int /*<<< orphan*/  QXL_CURSOR_SET ; 
 int /*<<< orphan*/  QXL_RELEASE_CURSOR_CMD ; 
 int FUNC0 (struct qxl_device*,int,int /*<<< orphan*/ ,struct qxl_release**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_device*,struct qxl_release*) ; 
 int FUNC5 (struct qxl_release*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct qxl_device*,struct qxl_release*) ; 
 int FUNC7 (struct qxl_release*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ *) ; 
 struct qxl_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;
	struct qxl_device *qdev = dev->dev_private;
	struct drm_framebuffer *fb = plane->state->fb;
	struct qxl_crtc *qcrtc = FUNC9(plane->state->crtc);
	struct qxl_cursor_cmd *cmd;
	struct qxl_release *release;
	int ret = 0;

	if (!qcrtc->cursor_bo)
		return 0;

	ret = FUNC0(qdev, sizeof(*cmd),
					 QXL_RELEASE_CURSOR_CMD,
					 &release, NULL);
	if (ret)
		return ret;

	ret = FUNC5(release, qcrtc->cursor_bo);
	if (ret)
		goto out_free_release;

	ret = FUNC7(release, false);
	if (ret)
		goto out_free_release;

	cmd = (struct qxl_cursor_cmd *)FUNC6(qdev, release);
	cmd->type = QXL_CURSOR_SET;
	cmd->u.set.position.x = plane->state->crtc_x + fb->hot_x;
	cmd->u.set.position.y = plane->state->crtc_y + fb->hot_y;

	cmd->u.set.shape = FUNC1(qdev, qcrtc->cursor_bo, 0);

	cmd->u.set.visible = 1;
	FUNC8(qdev, release, &cmd->release_info);

	FUNC2(qdev, release, QXL_CMD_CURSOR, false);
	FUNC3(release);

	return ret;

out_free_release:
	FUNC4(qdev, release);
	return ret;
}