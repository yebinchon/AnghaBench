
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; int stride; int height; int width; int format; } ;
struct TYPE_6__ {TYPE_2__ surface_create; } ;
struct qxl_surface_cmd {int release_info; int surface_id; TYPE_3__ u; int flags; int type; } ;
struct qxl_release {int dummy; } ;
struct qxl_device {int surf_id_idr_lock; int surf_id_idr; } ;
struct TYPE_4__ {int stride; int height; int width; int format; } ;
struct qxl_bo {int hw_surf_alloc; int surface_id; struct qxl_release* surf_create; TYPE_1__ surf; } ;


 int QXL_CMD_SURFACE ;
 int QXL_SURFACE_CMD_CREATE ;
 int QXL_SURF_FLAG_KEEP_DATA ;
 int idr_replace (int *,struct qxl_bo*,int ) ;
 int qxl_alloc_surface_release_reserved (struct qxl_device*,int ,int *,struct qxl_release**) ;
 int qxl_bo_physical_address (struct qxl_device*,struct qxl_bo*,int ) ;
 int qxl_push_command_ring_release (struct qxl_device*,struct qxl_release*,int ,int) ;
 int qxl_release_fence_buffer_objects (struct qxl_release*) ;
 scalar_t__ qxl_release_map (struct qxl_device*,struct qxl_release*) ;
 int qxl_release_reserve_list (struct qxl_release*,int) ;
 int qxl_release_unmap (struct qxl_device*,struct qxl_release*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int qxl_hw_surface_alloc(struct qxl_device *qdev,
    struct qxl_bo *surf)
{
 struct qxl_surface_cmd *cmd;
 struct qxl_release *release;
 int ret;

 if (surf->hw_surf_alloc)
  return 0;

 ret = qxl_alloc_surface_release_reserved(qdev, QXL_SURFACE_CMD_CREATE,
       ((void*)0),
       &release);
 if (ret)
  return ret;

 ret = qxl_release_reserve_list(release, 1);
 if (ret)
  return ret;

 cmd = (struct qxl_surface_cmd *)qxl_release_map(qdev, release);
 cmd->type = QXL_SURFACE_CMD_CREATE;
 cmd->flags = QXL_SURF_FLAG_KEEP_DATA;
 cmd->u.surface_create.format = surf->surf.format;
 cmd->u.surface_create.width = surf->surf.width;
 cmd->u.surface_create.height = surf->surf.height;
 cmd->u.surface_create.stride = surf->surf.stride;
 cmd->u.surface_create.data = qxl_bo_physical_address(qdev, surf, 0);
 cmd->surface_id = surf->surface_id;
 qxl_release_unmap(qdev, release, &cmd->release_info);

 surf->surf_create = release;




 qxl_push_command_ring_release(qdev, release, QXL_CMD_SURFACE, 0);
 qxl_release_fence_buffer_objects(release);

 surf->hw_surf_alloc = 1;
 spin_lock(&qdev->surf_id_idr_lock);
 idr_replace(&qdev->surf_id_idr, surf, surf->surface_id);
 spin_unlock(&qdev->surf_id_idr_lock);
 return 0;
}
