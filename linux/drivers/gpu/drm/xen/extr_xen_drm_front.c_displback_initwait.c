
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_drm_front_cfg {int num_connectors; struct xen_drm_front_info* front_info; } ;
struct xen_drm_front_info {struct xen_drm_front_cfg cfg; } ;


 int DRM_INFO (char*,int ) ;
 int xen_drm_front_cfg_card (struct xen_drm_front_info*,struct xen_drm_front_cfg*) ;
 int xen_drm_front_evtchnl_create_all (struct xen_drm_front_info*) ;
 int xen_drm_front_evtchnl_publish_all (struct xen_drm_front_info*) ;

__attribute__((used)) static int displback_initwait(struct xen_drm_front_info *front_info)
{
 struct xen_drm_front_cfg *cfg = &front_info->cfg;
 int ret;

 cfg->front_info = front_info;
 ret = xen_drm_front_cfg_card(front_info, cfg);
 if (ret < 0)
  return ret;

 DRM_INFO("Have %d connector(s)\n", cfg->num_connectors);

 ret = xen_drm_front_evtchnl_create_all(front_info);
 if (ret < 0)
  return ret;

 return xen_drm_front_evtchnl_publish_all(front_info);
}
