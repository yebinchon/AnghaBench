
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_surface_cmd {int surface_id; int release_info; int type; } ;
struct qxl_release {int surface_release_id; } ;
struct qxl_device {int surf_id_idr_lock; int surf_id_idr; } ;
struct qxl_bo {int hw_surf_alloc; int surface_id; int * surf_create; } ;


 int QXL_CMD_SURFACE ;
 int QXL_SURFACE_CMD_DESTROY ;
 int idr_replace (int *,int *,int) ;
 int qxl_alloc_surface_release_reserved (struct qxl_device*,int ,int *,struct qxl_release**) ;
 int qxl_push_command_ring_release (struct qxl_device*,struct qxl_release*,int ,int) ;
 int qxl_release_fence_buffer_objects (struct qxl_release*) ;
 scalar_t__ qxl_release_map (struct qxl_device*,struct qxl_release*) ;
 int qxl_release_unmap (struct qxl_device*,struct qxl_release*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int qxl_hw_surface_dealloc(struct qxl_device *qdev,
      struct qxl_bo *surf)
{
 struct qxl_surface_cmd *cmd;
 struct qxl_release *release;
 int ret;
 int id;

 if (!surf->hw_surf_alloc)
  return 0;

 ret = qxl_alloc_surface_release_reserved(qdev, QXL_SURFACE_CMD_DESTROY,
       surf->surf_create,
       &release);
 if (ret)
  return ret;

 surf->surf_create = ((void*)0);

 spin_lock(&qdev->surf_id_idr_lock);
 idr_replace(&qdev->surf_id_idr, ((void*)0), surf->surface_id);
 spin_unlock(&qdev->surf_id_idr_lock);
 surf->hw_surf_alloc = 0;

 id = surf->surface_id;
 surf->surface_id = 0;

 release->surface_release_id = id;
 cmd = (struct qxl_surface_cmd *)qxl_release_map(qdev, release);
 cmd->type = QXL_SURFACE_CMD_DESTROY;
 cmd->surface_id = id;
 qxl_release_unmap(qdev, release, &cmd->release_info);

 qxl_push_command_ring_release(qdev, release, QXL_CMD_SURFACE, 0);

 qxl_release_fence_buffer_objects(release);

 return 0;
}
