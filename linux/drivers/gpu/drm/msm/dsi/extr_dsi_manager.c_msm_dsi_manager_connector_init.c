
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct msm_dsi {int connector; TYPE_2__* dev; int encoder; } ;
struct drm_connector {TYPE_1__* funcs; scalar_t__ doublescan_allowed; scalar_t__ interlace_allowed; int polled; } ;
struct dsi_connector {struct drm_connector base; int id; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* destroy ) (int ) ;} ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int DRM_MODE_CONNECTOR_DSI ;
 int ENOMEM ;
 struct drm_connector* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (TYPE_2__*,struct drm_connector*,int *,int ) ;
 int dsi_mgr_conn_helper_funcs ;
 int dsi_mgr_connector_funcs ;
 struct msm_dsi* dsi_mgr_get_dsi (int ) ;
 struct dsi_connector* kzalloc (int,int ) ;
 int msm_dsi_manager_panel_init (struct drm_connector*,int ) ;
 int stub1 (int ) ;

struct drm_connector *msm_dsi_manager_connector_init(u8 id)
{
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct drm_connector *connector = ((void*)0);
 struct dsi_connector *dsi_connector;
 int ret;

 dsi_connector = kzalloc(sizeof(*dsi_connector), GFP_KERNEL);
 if (!dsi_connector)
  return ERR_PTR(-ENOMEM);

 dsi_connector->id = id;

 connector = &dsi_connector->base;

 ret = drm_connector_init(msm_dsi->dev, connector,
   &dsi_mgr_connector_funcs, DRM_MODE_CONNECTOR_DSI);
 if (ret)
  return ERR_PTR(ret);

 drm_connector_helper_add(connector, &dsi_mgr_conn_helper_funcs);




 connector->polled = DRM_CONNECTOR_POLL_HPD;


 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;

 drm_connector_attach_encoder(connector, msm_dsi->encoder);

 ret = msm_dsi_manager_panel_init(connector, id);
 if (ret) {
  DRM_DEV_ERROR(msm_dsi->dev->dev, "init panel failed %d\n", ret);
  goto fail;
 }

 return connector;

fail:
 connector->funcs->destroy(msm_dsi->connector);
 return ERR_PTR(ret);
}
