
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_drm_front_cfg {int num_connectors; } ;
struct xen_drm_front_info {int num_evt_pairs; TYPE_1__* evt_pairs; struct xen_drm_front_cfg cfg; } ;
struct xen_drm_front_evtchnl_pair {int dummy; } ;
struct TYPE_2__ {int evt; int req; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int EVTCHNL_TYPE_EVT ;
 int EVTCHNL_TYPE_REQ ;
 int GFP_KERNEL ;
 int evtchnl_alloc (struct xen_drm_front_info*,int,int *,int ) ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int xen_drm_front_evtchnl_free_all (struct xen_drm_front_info*) ;

int xen_drm_front_evtchnl_create_all(struct xen_drm_front_info *front_info)
{
 struct xen_drm_front_cfg *cfg;
 int ret, conn;

 cfg = &front_info->cfg;

 front_info->evt_pairs =
   kcalloc(cfg->num_connectors,
    sizeof(struct xen_drm_front_evtchnl_pair),
    GFP_KERNEL);
 if (!front_info->evt_pairs) {
  ret = -ENOMEM;
  goto fail;
 }

 for (conn = 0; conn < cfg->num_connectors; conn++) {
  ret = evtchnl_alloc(front_info, conn,
        &front_info->evt_pairs[conn].req,
        EVTCHNL_TYPE_REQ);
  if (ret < 0) {
   DRM_ERROR("Error allocating control channel\n");
   goto fail;
  }

  ret = evtchnl_alloc(front_info, conn,
        &front_info->evt_pairs[conn].evt,
        EVTCHNL_TYPE_EVT);
  if (ret < 0) {
   DRM_ERROR("Error allocating in-event channel\n");
   goto fail;
  }
 }
 front_info->num_evt_pairs = cfg->num_connectors;
 return 0;

fail:
 xen_drm_front_evtchnl_free_all(front_info);
 return ret;
}
