
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct msm_dsi {struct drm_encoder* encoder; TYPE_1__* dev; } ;
struct drm_bridge {int * funcs; } ;
struct dsi_bridge {struct drm_bridge base; int id; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 struct drm_bridge* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct dsi_bridge* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,struct drm_bridge*,int *) ;
 int dsi_mgr_bridge_funcs ;
 struct msm_dsi* dsi_mgr_get_dsi (int ) ;
 int msm_dsi_manager_bridge_destroy (struct drm_bridge*) ;

struct drm_bridge *msm_dsi_manager_bridge_init(u8 id)
{
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct drm_bridge *bridge = ((void*)0);
 struct dsi_bridge *dsi_bridge;
 struct drm_encoder *encoder;
 int ret;

 dsi_bridge = devm_kzalloc(msm_dsi->dev->dev,
    sizeof(*dsi_bridge), GFP_KERNEL);
 if (!dsi_bridge) {
  ret = -ENOMEM;
  goto fail;
 }

 dsi_bridge->id = id;

 encoder = msm_dsi->encoder;

 bridge = &dsi_bridge->base;
 bridge->funcs = &dsi_mgr_bridge_funcs;

 ret = drm_bridge_attach(encoder, bridge, ((void*)0));
 if (ret)
  goto fail;

 return bridge;

fail:
 if (bridge)
  msm_dsi_manager_bridge_destroy(bridge);

 return ERR_PTR(ret);
}
