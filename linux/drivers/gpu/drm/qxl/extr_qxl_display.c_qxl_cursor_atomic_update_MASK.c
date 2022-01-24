#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct qxl_release {int dummy; } ;
struct qxl_device {int dummy; } ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {int visible; int /*<<< orphan*/  shape; } ;
struct TYPE_11__ {TYPE_4__ position; TYPE_3__ set; } ;
struct qxl_cursor_cmd {int /*<<< orphan*/  release_info; TYPE_5__ u; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int data_size; int /*<<< orphan*/  data; scalar_t__ prev_chunk; scalar_t__ next_chunk; } ;
struct TYPE_7__ {int width; int height; scalar_t__ hot_spot_y; scalar_t__ hot_spot_x; int /*<<< orphan*/  type; scalar_t__ unique; } ;
struct qxl_cursor {int data_size; TYPE_2__ chunk; TYPE_1__ header; } ;
struct qxl_crtc {struct qxl_bo* cursor_bo; } ;
struct qxl_bo {int dummy; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {TYPE_6__* state; struct drm_device* dev; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {scalar_t__ hot_y; scalar_t__ hot_x; struct drm_gem_object** obj; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct TYPE_12__ {scalar_t__ crtc_y; scalar_t__ crtc_x; int /*<<< orphan*/  crtc; struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_CMD_CURSOR ; 
 int /*<<< orphan*/  QXL_CURSOR_MOVE ; 
 int /*<<< orphan*/  QXL_CURSOR_SET ; 
 int /*<<< orphan*/  QXL_RELEASE_CURSOR_CMD ; 
 int /*<<< orphan*/  SPICE_CURSOR_TYPE_ALPHA ; 
 struct qxl_bo* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC2 (struct qxl_device*,struct qxl_release*,int,struct qxl_bo**) ; 
 int FUNC3 (struct qxl_device*,int,int /*<<< orphan*/ ,struct qxl_release**,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qxl_bo*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*,struct qxl_bo*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC8 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC9 (struct qxl_bo**) ; 
 int /*<<< orphan*/  FUNC10 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC12 (struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC13 (struct qxl_device*,struct qxl_release*) ; 
 scalar_t__ FUNC14 (struct qxl_device*,struct qxl_release*) ; 
 int FUNC15 (struct qxl_release*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct qxl_device*,struct qxl_release*,int /*<<< orphan*/ *) ; 
 struct qxl_crtc* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct drm_plane *plane,
				     struct drm_plane_state *old_state)
{
	struct drm_device *dev = plane->dev;
	struct qxl_device *qdev = dev->dev_private;
	struct drm_framebuffer *fb = plane->state->fb;
	struct qxl_crtc *qcrtc = FUNC17(plane->state->crtc);
	struct qxl_release *release;
	struct qxl_cursor_cmd *cmd;
	struct qxl_cursor *cursor;
	struct drm_gem_object *obj;
	struct qxl_bo *cursor_bo = NULL, *user_bo = NULL, *old_cursor_bo = NULL;
	int ret;
	void *user_ptr;
	int size = 64*64*4;

	ret = FUNC3(qdev, sizeof(*cmd),
					 QXL_RELEASE_CURSOR_CMD,
					 &release, NULL);
	if (ret)
		return;

	if (fb != old_state->fb) {
		obj = fb->obj[0];
		user_bo = FUNC0(obj);

		/* pinning is done in the prepare/cleanup framevbuffer */
		ret = FUNC4(user_bo, &user_ptr);
		if (ret)
			goto out_free_release;

		ret = FUNC2(qdev, release,
					    sizeof(struct qxl_cursor) + size,
					    &cursor_bo);
		if (ret)
			goto out_kunmap;

		ret = FUNC7(cursor_bo);
		if (ret)
			goto out_free_bo;

		ret = FUNC15(release, true);
		if (ret)
			goto out_unpin;

		ret = FUNC4(cursor_bo, (void **)&cursor);
		if (ret)
			goto out_backoff;

		cursor->header.unique = 0;
		cursor->header.type = SPICE_CURSOR_TYPE_ALPHA;
		cursor->header.width = 64;
		cursor->header.height = 64;
		cursor->header.hot_spot_x = fb->hot_x;
		cursor->header.hot_spot_y = fb->hot_y;
		cursor->data_size = size;
		cursor->chunk.next_chunk = 0;
		cursor->chunk.prev_chunk = 0;
		cursor->chunk.data_size = size;
		FUNC1(cursor->chunk.data, user_ptr, size);
		FUNC5(cursor_bo);
		FUNC5(user_bo);

		cmd = (struct qxl_cursor_cmd *) FUNC14(qdev, release);
		cmd->u.set.visible = 1;
		cmd->u.set.shape = FUNC6(qdev,
							   cursor_bo, 0);
		cmd->type = QXL_CURSOR_SET;

		old_cursor_bo = qcrtc->cursor_bo;
		qcrtc->cursor_bo = cursor_bo;
		cursor_bo = NULL;
	} else {

		ret = FUNC15(release, true);
		if (ret)
			goto out_free_release;

		cmd = (struct qxl_cursor_cmd *) FUNC14(qdev, release);
		cmd->type = QXL_CURSOR_MOVE;
	}

	cmd->u.position.x = plane->state->crtc_x + fb->hot_x;
	cmd->u.position.y = plane->state->crtc_y + fb->hot_y;

	FUNC16(qdev, release, &cmd->release_info);
	FUNC10(qdev, release, QXL_CMD_CURSOR, false);
	FUNC12(release);

	if (old_cursor_bo != NULL)
		FUNC8(old_cursor_bo);
	FUNC9(&old_cursor_bo);
	FUNC9(&cursor_bo);

	return;

out_backoff:
	FUNC11(release);
out_unpin:
	FUNC8(cursor_bo);
out_free_bo:
	FUNC9(&cursor_bo);
out_kunmap:
	FUNC5(user_bo);
out_free_release:
	FUNC13(qdev, release);
	return;

}