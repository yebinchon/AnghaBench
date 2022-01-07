
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_edp {int encoder; int dev; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int polled; } ;
struct edp_connector {struct drm_connector base; struct msm_edp* edp; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_MODE_CONNECTOR_eDP ;
 int ENOMEM ;
 struct drm_connector* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 int edp_connector_funcs ;
 int edp_connector_helper_funcs ;
 struct edp_connector* kzalloc (int,int ) ;

struct drm_connector *msm_edp_connector_init(struct msm_edp *edp)
{
 struct drm_connector *connector = ((void*)0);
 struct edp_connector *edp_connector;
 int ret;

 edp_connector = kzalloc(sizeof(*edp_connector), GFP_KERNEL);
 if (!edp_connector)
  return ERR_PTR(-ENOMEM);

 edp_connector->edp = edp;

 connector = &edp_connector->base;

 ret = drm_connector_init(edp->dev, connector, &edp_connector_funcs,
   DRM_MODE_CONNECTOR_eDP);
 if (ret)
  return ERR_PTR(ret);

 drm_connector_helper_add(connector, &edp_connector_helper_funcs);


 connector->polled = DRM_CONNECTOR_POLL_CONNECT;


 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;

 drm_connector_attach_encoder(connector, edp->encoder);

 return connector;
}
