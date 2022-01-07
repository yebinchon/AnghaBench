
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_edp {int encoder; TYPE_1__* dev; } ;
struct drm_bridge {int * funcs; } ;
struct edp_bridge {struct drm_bridge base; struct msm_edp* edp; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 struct drm_bridge* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct edp_bridge* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (int ,struct drm_bridge*,int *) ;
 int edp_bridge_destroy (struct drm_bridge*) ;
 int edp_bridge_funcs ;

struct drm_bridge *msm_edp_bridge_init(struct msm_edp *edp)
{
 struct drm_bridge *bridge = ((void*)0);
 struct edp_bridge *edp_bridge;
 int ret;

 edp_bridge = devm_kzalloc(edp->dev->dev,
   sizeof(*edp_bridge), GFP_KERNEL);
 if (!edp_bridge) {
  ret = -ENOMEM;
  goto fail;
 }

 edp_bridge->edp = edp;

 bridge = &edp_bridge->base;
 bridge->funcs = &edp_bridge_funcs;

 ret = drm_bridge_attach(edp->encoder, bridge, ((void*)0));
 if (ret)
  goto fail;

 return bridge;

fail:
 if (bridge)
  edp_bridge_destroy(bridge);

 return ERR_PTR(ret);
}
