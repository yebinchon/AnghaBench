
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_release {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_cursor_cmd {int release_info; int type; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {struct qxl_device* dev_private; } ;


 int QXL_CMD_CURSOR ;
 int QXL_CURSOR_HIDE ;
 int QXL_RELEASE_CURSOR_CMD ;
 int qxl_alloc_release_reserved (struct qxl_device*,int,int ,struct qxl_release**,int *) ;
 int qxl_push_cursor_ring_release (struct qxl_device*,struct qxl_release*,int ,int) ;
 int qxl_release_fence_buffer_objects (struct qxl_release*) ;
 int qxl_release_free (struct qxl_device*,struct qxl_release*) ;
 scalar_t__ qxl_release_map (struct qxl_device*,struct qxl_release*) ;
 int qxl_release_reserve_list (struct qxl_release*,int) ;
 int qxl_release_unmap (struct qxl_device*,struct qxl_release*,int *) ;

__attribute__((used)) static void qxl_cursor_atomic_disable(struct drm_plane *plane,
          struct drm_plane_state *old_state)
{
 struct qxl_device *qdev = plane->dev->dev_private;
 struct qxl_release *release;
 struct qxl_cursor_cmd *cmd;
 int ret;

 ret = qxl_alloc_release_reserved(qdev, sizeof(*cmd),
      QXL_RELEASE_CURSOR_CMD,
      &release, ((void*)0));
 if (ret)
  return;

 ret = qxl_release_reserve_list(release, 1);
 if (ret) {
  qxl_release_free(qdev, release);
  return;
 }

 cmd = (struct qxl_cursor_cmd *)qxl_release_map(qdev, release);
 cmd->type = QXL_CURSOR_HIDE;
 qxl_release_unmap(qdev, release, &cmd->release_info);

 qxl_push_cursor_ring_release(qdev, release, QXL_CMD_CURSOR, 0);
 qxl_release_fence_buffer_objects(release);
}
