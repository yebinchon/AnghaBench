
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int num_connectors; } ;
struct xen_drm_front_info {TYPE_1__ cfg; struct xen_drm_front_drm_info* drm_info; } ;
struct xen_drm_front_drm_info {int * pipeline; } ;


 scalar_t__ unlikely (int) ;
 int xen_drm_front_kms_on_frame_done (int *,int ) ;

void xen_drm_front_on_frame_done(struct xen_drm_front_info *front_info,
     int conn_idx, u64 fb_cookie)
{
 struct xen_drm_front_drm_info *drm_info = front_info->drm_info;

 if (unlikely(conn_idx >= front_info->cfg.num_connectors))
  return;

 xen_drm_front_kms_on_frame_done(&drm_info->pipeline[conn_idx],
     fb_cookie);
}
