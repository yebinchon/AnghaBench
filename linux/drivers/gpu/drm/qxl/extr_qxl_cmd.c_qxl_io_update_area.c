
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct qxl_rect {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
struct qxl_device {int update_area_mutex; TYPE_2__* ram_header; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; } ;
struct qxl_bo {int surface_id; TYPE_1__ surf; scalar_t__ is_primary; int hw_surf_alloc; } ;
struct TYPE_4__ {int update_surface; struct qxl_rect update_area; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int QXL_IO_UPDATE_AREA_ASYNC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_io_cmd_user (struct qxl_device*,int ,int ,int) ;

int qxl_io_update_area(struct qxl_device *qdev, struct qxl_bo *surf,
   const struct qxl_rect *area)
{
 int surface_id;
 uint32_t surface_width, surface_height;
 int ret;

 if (!surf->hw_surf_alloc)
  DRM_ERROR("got io update area with no hw surface\n");

 if (surf->is_primary)
  surface_id = 0;
 else
  surface_id = surf->surface_id;
 surface_width = surf->surf.width;
 surface_height = surf->surf.height;

 if (area->left < 0 || area->top < 0 ||
     area->right > surface_width || area->bottom > surface_height)
  return -EINVAL;

 mutex_lock(&qdev->update_area_mutex);
 qdev->ram_header->update_area = *area;
 qdev->ram_header->update_surface = surface_id;
 ret = wait_for_io_cmd_user(qdev, 0, QXL_IO_UPDATE_AREA_ASYNC, 1);
 mutex_unlock(&qdev->update_area_mutex);
 return ret;
}
