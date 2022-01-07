
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_drm_front_info {int dummy; } ;


 int EVTCHNL_STATE_CONNECTED ;
 int xen_drm_drv_init (struct xen_drm_front_info*) ;
 int xen_drm_front_evtchnl_set_state (struct xen_drm_front_info*,int ) ;

__attribute__((used)) static int displback_connect(struct xen_drm_front_info *front_info)
{
 xen_drm_front_evtchnl_set_state(front_info, EVTCHNL_STATE_CONNECTED);
 return xen_drm_drv_init(front_info);
}
