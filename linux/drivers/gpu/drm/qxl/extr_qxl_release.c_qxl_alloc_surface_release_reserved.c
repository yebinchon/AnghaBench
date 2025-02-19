
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union qxl_release_info {int id; } ;
struct qxl_surface_cmd {int dummy; } ;
struct qxl_release {scalar_t__ release_offset; struct qxl_bo* release_bo; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;
typedef enum qxl_surface_cmd_type { ____Placeholder_qxl_surface_cmd_type } qxl_surface_cmd_type ;


 int QXL_RELEASE_SURFACE_CMD ;
 int QXL_SURFACE_CMD_DESTROY ;
 int qxl_alloc_release_reserved (struct qxl_device*,int,int ,struct qxl_release**,int *) ;
 int qxl_release_alloc (struct qxl_device*,int ,struct qxl_release**) ;
 int qxl_release_list_add (struct qxl_release*,struct qxl_bo*) ;
 union qxl_release_info* qxl_release_map (struct qxl_device*,struct qxl_release*) ;
 int qxl_release_unmap (struct qxl_device*,struct qxl_release*,union qxl_release_info*) ;

int qxl_alloc_surface_release_reserved(struct qxl_device *qdev,
           enum qxl_surface_cmd_type surface_cmd_type,
           struct qxl_release *create_rel,
           struct qxl_release **release)
{
 if (surface_cmd_type == QXL_SURFACE_CMD_DESTROY && create_rel) {
  int idr_ret;
  struct qxl_bo *bo;
  union qxl_release_info *info;


  idr_ret = qxl_release_alloc(qdev, QXL_RELEASE_SURFACE_CMD, release);
  if (idr_ret < 0)
   return idr_ret;
  bo = create_rel->release_bo;

  (*release)->release_bo = bo;
  (*release)->release_offset = create_rel->release_offset + 64;

  qxl_release_list_add(*release, bo);

  info = qxl_release_map(qdev, *release);
  info->id = idr_ret;
  qxl_release_unmap(qdev, *release, info);
  return 0;
 }

 return qxl_alloc_release_reserved(qdev, sizeof(struct qxl_surface_cmd),
      QXL_RELEASE_SURFACE_CMD, release, ((void*)0));
}
