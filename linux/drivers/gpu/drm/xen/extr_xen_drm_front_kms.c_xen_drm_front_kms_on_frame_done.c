
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xen_drm_front_drm_pipeline {int pflip_to_worker; } ;


 int cancel_delayed_work (int *) ;
 int send_pending_event (struct xen_drm_front_drm_pipeline*) ;

void xen_drm_front_kms_on_frame_done(struct xen_drm_front_drm_pipeline *pipeline,
         u64 fb_cookie)
{





 cancel_delayed_work(&pipeline->pflip_to_worker);

 send_pending_event(pipeline);
}
